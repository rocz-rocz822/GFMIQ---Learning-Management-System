@extends('admin.layouts.master')

@section('content')
    <div class="page-body">
        <div class="container-xl">
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Certificate Content</h3>
                        </div>
                        <div class="card-body">
                            <div class="alert alert-primary">
                                <h4 class="alert-heading">Default Variables</h4>
                                <p>[student_name], [course_name], [date], [instructor_name]</p>
                            </div>
                            <form action="{{ route('admin.certificate-builder.update') }}" method="POST" enctype="multipart/form-data">
                                @csrf
                                <div class="form-group mt-3">
                                    <label class="form-label">Student Name</label>
                                    <input type="text" class="form-control" name="title" value="{{ $certificate?->title }}" placeholder="Enter Student Name">
                                    <x-input-error :messages="$errors->get('title')" class="mt-2" />
                                </div>
                                <div class="form-group mt-3">
                                    <label class="form-label">Course Name</label>
                                    <input type="text" class="form-control" name="subtitle" value="{{ $certificate?->sub_title }}" placeholder="Enter Course Name">
                                    <x-input-error :messages="$errors->get('subtitle')" class="mt-2" />
                                </div>

                                <div class="form-group mt-3">
                                    <label class="form-label">Certificate Description</label>
                                    <textarea name="description" class="form-control" placeholder="Enter certificate description">{{ $certificate?->description }}</textarea>
                                    <x-input-error :messages="$errors->get('description')" class="mt-2" />
                                </div>

                                <div class="form-group mt-3">
                                    @if ($certificate?->background)
                                        <x-image-preview src="{{ asset($certificate->background) }}" />
                                    @endif
                                    <label class="form-label">Certificate Template</label>
                                    <input type="file" name="background" class="form-control">
                                    <x-input-error :messages="$errors->get('background')" class="mt-2" />
                                </div>

                                <div class="form-group mt-3">
                                    @if ($certificate?->signature)
                                        <x-image-preview src="{{ asset($certificate->signature) }}" />
                                    @endif
                                    <label class="form-label">Instructor's Signature</label>
                                    <input type="file" name="signature" class="form-control">
                                    <x-input-error :messages="$errors->get('signature')" class="mt-2" />
                                </div>

                                <div class="form-group mt-3">
                                    <button type="submit" class="btn btn-primary">Update</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Certificate Builder</h3>
                        </div>
                        <div class="card-body">
                            <div class="certificate-body" style="background-image: url({{ asset($certificate?->background) }});">
                                <div id="title" class="title draggable-element">{{ $certificate?->title }}</div>
                                <div id="subtitle" class="subtitle draggable-element">{{ $certificate?->sub_title }}</div>
                                <div id="description" class="description draggable-element">{{ $certificate?->description }}</div>
                                <div id="signature" class="signature draggable-element">
                                    @if ($certificate?->signature)
                                        <img src="{{ asset($certificate->signature) }}" alt="Instructor Signature">
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('styles')
    <style>
        @if(isset($certificateItems) && count($certificateItems))
            @foreach($certificateItems as $item)
                #{{ $item->element_id }} {
                    left: {{ $item->x_position }}px;
                    top: {{ $item->y_position }}px;
                }
            @endforeach
        @endif
    </style>
@endpush
