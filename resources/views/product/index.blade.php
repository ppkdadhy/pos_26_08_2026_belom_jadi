@extends('app')
@section('content')
    <div class="table-responsive">
        <div align="right" class="mb-2">
            <a href="{{ route('product.create') }}" class="btn btn-primary btn-sm">Create</a>
        </div>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Name</th>
                    <th>Category Name</th>
                    <th>Price</th>
                    <th>Description</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($products as $index => $v)
                    <tr>
                        <td>{{ $index + 1 }}</td>
                        <td>
                            <div class="d-flex align-items-center gap-2">
                                <img src="{{ asset('storage/' . $v->photo) }}" alt="" width="40" height="40"
                                    style="object-fit: cover">

                                <div>
                                    <div class="fw-semibold">
                                        {{ $v->name }}
                                    </div>

                                </div>

                            </div>

                        </td>
                        <td>{{ $v->category->name }}</td>
                        <td>Rp. {{ number_format($v->price) }}</td>
                        <td>{{ $v->description }}</td>
                        <td>
                            <a href="{{ route('product.edit', $v->id) }}" class="btn btn-success btn-sm">Edit</a>
                            <form action="{{ route('product.destroy', $v->id) }}" method="post" class="d-inline">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-danger btn-sm"
                                    onclick="return confirm('Yakin di hapus?')">Delete</button>
                            </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
@endsection
