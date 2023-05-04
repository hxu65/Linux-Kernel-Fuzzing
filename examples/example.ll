; ModuleID = 'challenge-RG.c'
source_filename = "challenge-RG.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.chunk_t = type { i8*, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"ABCD\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Error! Invalid file signature\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Error! Invalid file\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Error! malloc fails\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"BOOM\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Error while reading chunk data\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Error while reading chunk size\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"End of file\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Error while reading chunk type\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Error! opening file\0A\00", align 1

; Function Attrs: noinline optnone uwtable
define %struct.chunk_t* @_Z9find_BOOMP8_IO_FILE(%struct._IO_FILE*) #0 !dbg !261 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca [5 x i8], align 1
  %4 = alloca %struct.chunk_t*, align 8
  %5 = alloca [5 x i8], align 1
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %2, metadata !269, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.declare(metadata [5 x i8]* %3, metadata !271, metadata !DIExpression()), !dbg !275
  %8 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 4, !dbg !276
  store i8 0, i8* %8, align 1, !dbg !277
  call void @llvm.dbg.declare(metadata %struct.chunk_t** %4, metadata !278, metadata !DIExpression()), !dbg !279
  store %struct.chunk_t* null, %struct.chunk_t** %4, align 8, !dbg !279
  %9 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i32 0, i32 0, !dbg !280
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !282
  %11 = call i64 @fread(i8* %9, i64 4, i64 1, %struct._IO_FILE* %10), !dbg !283
  %12 = icmp ne i64 %11, 0, !dbg !283
  br i1 %12, label %13, label %20, !dbg !284

; <label>:13:                                     ; preds = %1
  %14 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i32 0, i32 0, !dbg !285
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #9, !dbg !288
  %16 = icmp ne i32 %15, 0, !dbg !288
  br i1 %16, label %17, label %19, !dbg !289

; <label>:17:                                     ; preds = %13
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0)), !dbg !290
  br label %131, !dbg !292

; <label>:19:                                     ; preds = %13
  br label %22, !dbg !293

; <label>:20:                                     ; preds = %1
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)), !dbg !294
  br label %131, !dbg !296

; <label>:22:                                     ; preds = %19
  br label %23, !dbg !297

; <label>:23:                                     ; preds = %129, %22
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !298
  %25 = call i32 @feof(%struct._IO_FILE* %24) #10, !dbg !299
  %26 = icmp ne i32 %25, 0, !dbg !299
  %27 = xor i1 %26, true, !dbg !300
  br i1 %27, label %28, label %130, !dbg !297

; <label>:28:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata [5 x i8]* %5, metadata !301, metadata !DIExpression()), !dbg !303
  %29 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 4, !dbg !304
  store i8 0, i8* %29, align 1, !dbg !305
  call void @llvm.dbg.declare(metadata i32* %6, metadata !306, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.declare(metadata i8** %7, metadata !308, metadata !DIExpression()), !dbg !309
  store i8* null, i8** %7, align 8, !dbg !309
  %30 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i32 0, i32 0, !dbg !310
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !312
  %32 = call i64 @fread(i8* %30, i64 4, i64 1, %struct._IO_FILE* %31), !dbg !313
  %33 = icmp ne i64 %32, 0, !dbg !313
  br i1 %33, label %34, label %116, !dbg !314

; <label>:34:                                     ; preds = %28
  %35 = bitcast i32* %6 to i8*, !dbg !315
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !318
  %37 = call i64 @fread(i8* %35, i64 4, i64 1, %struct._IO_FILE* %36), !dbg !319
  %38 = icmp ne i64 %37, 0, !dbg !319
  br i1 %38, label %39, label %113, !dbg !320

; <label>:39:                                     ; preds = %34
  %40 = load i32, i32* %6, align 4, !dbg !321
  %41 = zext i32 %40 to i64, !dbg !321
  %42 = call noalias i8* @malloc(i64 %41) #10, !dbg !323
  store i8* %42, i8** %7, align 8, !dbg !324
  %43 = load i8*, i8** %7, align 8, !dbg !325
  %44 = icmp eq i8* %43, null, !dbg !327
  br i1 %44, label %45, label %47, !dbg !328

; <label>:45:                                     ; preds = %39
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)), !dbg !329
  br label %131, !dbg !331

; <label>:47:                                     ; preds = %39
  %48 = load i8*, i8** %7, align 8, !dbg !332
  %49 = load i32, i32* %6, align 4, !dbg !334
  %50 = zext i32 %49 to i64, !dbg !334
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !335
  %52 = call i64 @fread(i8* %48, i64 %50, i64 1, %struct._IO_FILE* %51), !dbg !336
  %53 = icmp ne i64 %52, 0, !dbg !336
  br i1 %53, label %54, label %110, !dbg !337

; <label>:54:                                     ; preds = %47
  %55 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i32 0, i32 0, !dbg !338
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0)) #9, !dbg !341
  %57 = icmp ne i32 %56, 0, !dbg !341
  br i1 %57, label %109, label %58, !dbg !342

; <label>:58:                                     ; preds = %54
  %59 = load i32, i32* %6, align 4, !dbg !343
  %60 = icmp eq i32 %59, 8, !dbg !344
  br i1 %60, label %61, label %109, !dbg !345

; <label>:61:                                     ; preds = %58
  %62 = call noalias i8* @malloc(i64 24) #10, !dbg !346
  %63 = bitcast i8* %62 to %struct.chunk_t*, !dbg !348
  store %struct.chunk_t* %63, %struct.chunk_t** %4, align 8, !dbg !349
  %64 = load %struct.chunk_t*, %struct.chunk_t** %4, align 8, !dbg !350
  %65 = icmp eq %struct.chunk_t* %64, null, !dbg !352
  br i1 %65, label %66, label %68, !dbg !353

; <label>:66:                                     ; preds = %61
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)), !dbg !354
  br label %131, !dbg !356

; <label>:68:                                     ; preds = %61
  %69 = call noalias i8* @malloc(i64 5) #10, !dbg !357
  %70 = load %struct.chunk_t*, %struct.chunk_t** %4, align 8, !dbg !358
  %71 = getelementptr inbounds %struct.chunk_t, %struct.chunk_t* %70, i32 0, i32 0, !dbg !359
  store i8* %69, i8** %71, align 8, !dbg !360
  %72 = load %struct.chunk_t*, %struct.chunk_t** %4, align 8, !dbg !361
  %73 = getelementptr inbounds %struct.chunk_t, %struct.chunk_t* %72, i32 0, i32 0, !dbg !363
  %74 = load i8*, i8** %73, align 8, !dbg !363
  %75 = icmp eq i8* %74, null, !dbg !364
  br i1 %75, label %76, label %78, !dbg !365

; <label>:76:                                     ; preds = %68
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)), !dbg !366
  br label %131, !dbg !368

; <label>:78:                                     ; preds = %68
  %79 = load %struct.chunk_t*, %struct.chunk_t** %4, align 8, !dbg !369
  %80 = getelementptr inbounds %struct.chunk_t, %struct.chunk_t* %79, i32 0, i32 0, !dbg !370
  %81 = load i8*, i8** %80, align 8, !dbg !370
  %82 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i32 0, i32 0, !dbg !371
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %81, i8* %82, i64 5, i32 1, i1 false), !dbg !371
  %83 = load i32, i32* %6, align 4, !dbg !372
  %84 = load %struct.chunk_t*, %struct.chunk_t** %4, align 8, !dbg !373
  %85 = getelementptr inbounds %struct.chunk_t, %struct.chunk_t* %84, i32 0, i32 1, !dbg !374
  store i32 %83, i32* %85, align 8, !dbg !375
  %86 = load i32, i32* %6, align 4, !dbg !376
  %87 = zext i32 %86 to i64, !dbg !376
  %88 = call noalias i8* @malloc(i64 %87) #10, !dbg !377
  %89 = load %struct.chunk_t*, %struct.chunk_t** %4, align 8, !dbg !378
  %90 = getelementptr inbounds %struct.chunk_t, %struct.chunk_t* %89, i32 0, i32 2, !dbg !379
  store i8* %88, i8** %90, align 8, !dbg !380
  %91 = load %struct.chunk_t*, %struct.chunk_t** %4, align 8, !dbg !381
  %92 = getelementptr inbounds %struct.chunk_t, %struct.chunk_t* %91, i32 0, i32 2, !dbg !383
  %93 = load i8*, i8** %92, align 8, !dbg !383
  %94 = icmp eq i8* %93, null, !dbg !384
  br i1 %94, label %95, label %97, !dbg !385

; <label>:95:                                     ; preds = %78
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0)), !dbg !386
  br label %131, !dbg !388

; <label>:97:                                     ; preds = %78
  %98 = load %struct.chunk_t*, %struct.chunk_t** %4, align 8, !dbg !389
  %99 = getelementptr inbounds %struct.chunk_t, %struct.chunk_t* %98, i32 0, i32 2, !dbg !390
  %100 = load i8*, i8** %99, align 8, !dbg !390
  %101 = load i8*, i8** %7, align 8, !dbg !391
  %102 = load i32, i32* %6, align 4, !dbg !392
  %103 = zext i32 %102 to i64, !dbg !392
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %100, i8* %101, i64 %103, i32 1, i1 false), !dbg !393
  %104 = load i8*, i8** %7, align 8, !dbg !394
  %105 = icmp ne i8* %104, null, !dbg !396
  br i1 %105, label %106, label %108, !dbg !397

; <label>:106:                                    ; preds = %97
  %107 = load i8*, i8** %7, align 8, !dbg !398
  call void @free(i8* %107) #10, !dbg !399
  br label %108, !dbg !399

; <label>:108:                                    ; preds = %106, %97
  br label %131, !dbg !400

; <label>:109:                                    ; preds = %58, %54
  br label %112, !dbg !401

; <label>:110:                                    ; preds = %47
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0)), !dbg !402
  br label %131, !dbg !404

; <label>:112:                                    ; preds = %109
  br label %115, !dbg !405

; <label>:113:                                    ; preds = %34
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i32 0, i32 0)), !dbg !406
  br label %131, !dbg !408

; <label>:115:                                    ; preds = %112
  br label %124, !dbg !409

; <label>:116:                                    ; preds = %28
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8, !dbg !410
  %118 = call i32 @feof(%struct._IO_FILE* %117) #10, !dbg !413
  %119 = icmp ne i32 %118, 0, !dbg !413
  br i1 %119, label %120, label %122, !dbg !414

; <label>:120:                                    ; preds = %116
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0)), !dbg !415
  br label %130, !dbg !417

; <label>:122:                                    ; preds = %116
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0)), !dbg !418
  br label %131, !dbg !419

; <label>:124:                                    ; preds = %115
  %125 = load i8*, i8** %7, align 8, !dbg !420
  %126 = icmp ne i8* %125, null, !dbg !422
  br i1 %126, label %127, label %129, !dbg !423

; <label>:127:                                    ; preds = %124
  %128 = load i8*, i8** %7, align 8, !dbg !424
  call void @free(i8* %128) #10, !dbg !425
  br label %129, !dbg !425

; <label>:129:                                    ; preds = %127, %124
  br label %23, !dbg !297, !llvm.loop !426

; <label>:130:                                    ; preds = %120, %23
  br label %131, !dbg !297

; <label>:131:                                    ; preds = %130, %122, %113, %110, %108, %95, %76, %66, %45, %20, %17
  %132 = load %struct.chunk_t*, %struct.chunk_t** %4, align 8, !dbg !428
  ret %struct.chunk_t* %132, !dbg !429
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define void @_Z12process_BOOMP7chunk_t(%struct.chunk_t*) #6 !dbg !430 {
  %2 = alloca %struct.chunk_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.chunk_t* %0, %struct.chunk_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.chunk_t** %2, metadata !433, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.declare(metadata i32* %3, metadata !435, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.declare(metadata i32* %4, metadata !437, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.declare(metadata i32* %5, metadata !439, metadata !DIExpression()), !dbg !440
  %6 = load %struct.chunk_t*, %struct.chunk_t** %2, align 8, !dbg !441
  %7 = icmp eq %struct.chunk_t* %6, null, !dbg !443
  br i1 %7, label %8, label %9, !dbg !444

; <label>:8:                                      ; preds = %1
  br label %36, !dbg !445

; <label>:9:                                      ; preds = %1
  %10 = bitcast i32* %3 to i8*, !dbg !446
  %11 = load %struct.chunk_t*, %struct.chunk_t** %2, align 8, !dbg !447
  %12 = getelementptr inbounds %struct.chunk_t, %struct.chunk_t* %11, i32 0, i32 2, !dbg !448
  %13 = load i8*, i8** %12, align 8, !dbg !448
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %13, i64 4, i32 1, i1 false), !dbg !446
  %14 = bitcast i32* %4 to i8*, !dbg !449
  %15 = load %struct.chunk_t*, %struct.chunk_t** %2, align 8, !dbg !450
  %16 = getelementptr inbounds %struct.chunk_t, %struct.chunk_t* %15, i32 0, i32 2, !dbg !451
  %17 = load i8*, i8** %16, align 8, !dbg !451
  %18 = getelementptr inbounds i8, i8* %17, i64 4, !dbg !450
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %18, i64 4, i32 1, i1 false), !dbg !449
  %19 = load i32, i32* %3, align 4, !dbg !452
  %20 = load i32, i32* %4, align 4, !dbg !453
  %21 = add i32 %19, %20, !dbg !454
  store i32 %21, i32* %5, align 4, !dbg !455
  %22 = load i32, i32* %5, align 4, !dbg !456
  %23 = icmp ugt i32 %22, 283, !dbg !458
  br i1 %23, label %24, label %36, !dbg !459

; <label>:24:                                     ; preds = %9
  %25 = load i32, i32* %5, align 4, !dbg !460
  %26 = icmp ult i32 %25, 286, !dbg !461
  br i1 %26, label %27, label %36, !dbg !462

; <label>:27:                                     ; preds = %24
  %28 = load %struct.chunk_t*, %struct.chunk_t** %2, align 8, !dbg !463
  %29 = getelementptr inbounds %struct.chunk_t, %struct.chunk_t* %28, i32 0, i32 0, !dbg !465
  %30 = load i8*, i8** %29, align 8, !dbg !465
  call void @free(i8* %30) #10, !dbg !466
  %31 = load %struct.chunk_t*, %struct.chunk_t** %2, align 8, !dbg !467
  %32 = getelementptr inbounds %struct.chunk_t, %struct.chunk_t* %31, i32 0, i32 2, !dbg !468
  %33 = load i8*, i8** %32, align 8, !dbg !468
  call void @free(i8* %33) #10, !dbg !469
  %34 = load %struct.chunk_t*, %struct.chunk_t** %2, align 8, !dbg !470
  %35 = bitcast %struct.chunk_t* %34 to i8*, !dbg !470
  call void @free(i8* %35) #10, !dbg !471
  br label %36, !dbg !472

; <label>:36:                                     ; preds = %8, %27, %24, %9
  ret void, !dbg !473
}

; Function Attrs: noinline norecurse optnone uwtable
define i32 @main(i32, i8**) #7 !dbg !474 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca %struct.chunk_t*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !477, metadata !DIExpression()), !dbg !478
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !479, metadata !DIExpression()), !dbg !480
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %6, metadata !481, metadata !DIExpression()), !dbg !482
  %8 = load i8**, i8*** %5, align 8, !dbg !483
  %9 = getelementptr inbounds i8*, i8** %8, i64 1, !dbg !483
  %10 = load i8*, i8** %9, align 8, !dbg !483
  %11 = call %struct._IO_FILE* @fopen(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)), !dbg !485
  store %struct._IO_FILE* %11, %struct._IO_FILE** %6, align 8, !dbg !486
  %12 = icmp eq %struct._IO_FILE* %11, null, !dbg !487
  br i1 %12, label %13, label %15, !dbg !488

; <label>:13:                                     ; preds = %2
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0)), !dbg !489
  call void @exit(i32 1) #11, !dbg !491
  unreachable, !dbg !491

; <label>:15:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.chunk_t** %7, metadata !492, metadata !DIExpression()), !dbg !493
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !494
  %17 = call %struct.chunk_t* @_Z9find_BOOMP8_IO_FILE(%struct._IO_FILE* %16), !dbg !495
  store %struct.chunk_t* %17, %struct.chunk_t** %7, align 8, !dbg !493
  %18 = load %struct.chunk_t*, %struct.chunk_t** %7, align 8, !dbg !496
  call void @_Z12process_BOOMP7chunk_t(%struct.chunk_t* %18), !dbg !497
  %19 = load %struct.chunk_t*, %struct.chunk_t** %7, align 8, !dbg !498
  %20 = icmp ne %struct.chunk_t* %19, null, !dbg !500
  br i1 %20, label %21, label %30, !dbg !501

; <label>:21:                                     ; preds = %15
  %22 = load %struct.chunk_t*, %struct.chunk_t** %7, align 8, !dbg !502
  %23 = getelementptr inbounds %struct.chunk_t, %struct.chunk_t* %22, i32 0, i32 0, !dbg !504
  %24 = load i8*, i8** %23, align 8, !dbg !504
  call void @free(i8* %24) #10, !dbg !505
  %25 = load %struct.chunk_t*, %struct.chunk_t** %7, align 8, !dbg !506
  %26 = getelementptr inbounds %struct.chunk_t, %struct.chunk_t* %25, i32 0, i32 2, !dbg !507
  %27 = load i8*, i8** %26, align 8, !dbg !507
  call void @free(i8* %27) #10, !dbg !508
  %28 = load %struct.chunk_t*, %struct.chunk_t** %7, align 8, !dbg !509
  %29 = bitcast %struct.chunk_t* %28 to i8*, !dbg !509
  call void @free(i8* %29) #10, !dbg !510
  br label %30, !dbg !511

; <label>:30:                                     ; preds = %21, %15
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8, !dbg !512
  %32 = call i32 @fclose(%struct._IO_FILE* %31), !dbg !513
  ret i32 0, !dbg !514
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #8

declare i32 @fclose(%struct._IO_FILE*) #2

attributes #0 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noinline norecurse optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!257, !258, !259}
!llvm.ident = !{!260}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, imports: !14)
!1 = !DIFile(filename: "challenge-RG.c", directory: "/home/linux/Desktop/Mult-target-directed-fuzzing-main/examples")
!2 = !{}
!3 = !{!4, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "chunk_t", file: !1, line: 9, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 5, size: 192, elements: !9, identifier: "_ZTS7chunk_t")
!9 = !{!10, !11, !13}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !8, file: !1, line: 6, baseType: !4, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !8, file: !1, line: 7, baseType: !12, size: 32, offset: 64)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !8, file: !1, line: 8, baseType: !4, size: 64, offset: 128)
!14 = !{!15, !22, !26, !33, !37, !42, !44, !51, !55, !59, !73, !77, !81, !85, !89, !93, !97, !101, !105, !109, !117, !121, !125, !127, !131, !135, !140, !146, !150, !154, !156, !164, !168, !176, !178, !182, !186, !190, !194, !199, !204, !209, !210, !211, !212, !214, !215, !216, !217, !218, !219, !220, !222, !223, !224, !225, !226, !227, !228, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256}
!15 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !17, file: !21, line: 52)
!16 = !DINamespace(name: "std", scope: null)
!17 = !DISubprogram(name: "abs", scope: !18, file: !18, line: 837, type: !19, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!18 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/linux/Desktop/Mult-target-directed-fuzzing-main/examples")
!19 = !DISubroutineType(types: !20)
!20 = !{!12, !12}
!21 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/bits/std_abs.h", directory: "/home/linux/Desktop/Mult-target-directed-fuzzing-main/examples")
!22 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !23, file: !25, line: 127)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !18, line: 62, baseType: !24)
!24 = !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!25 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/cstdlib", directory: "/home/linux/Desktop/Mult-target-directed-fuzzing-main/examples")
!26 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !27, file: !25, line: 128)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !18, line: 70, baseType: !28)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 66, size: 128, elements: !29, identifier: "_ZTS6ldiv_t")
!29 = !{!30, !32}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !28, file: !18, line: 68, baseType: !31, size: 64)
!31 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !28, file: !18, line: 69, baseType: !31, size: 64, offset: 64)
!33 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !34, file: !25, line: 130)
!34 = !DISubprogram(name: "abort", scope: !18, file: !18, line: 588, type: !35, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!35 = !DISubroutineType(types: !36)
!36 = !{null}
!37 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !38, file: !25, line: 134)
!38 = !DISubprogram(name: "atexit", scope: !18, file: !18, line: 592, type: !39, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!39 = !DISubroutineType(types: !40)
!40 = !{!12, !41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!42 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !43, file: !25, line: 137)
!43 = !DISubprogram(name: "at_quick_exit", scope: !18, file: !18, line: 597, type: !39, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!44 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !45, file: !25, line: 140)
!45 = !DISubprogram(name: "atof", scope: !18, file: !18, line: 101, type: !46, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !49}
!48 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!51 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !52, file: !25, line: 141)
!52 = !DISubprogram(name: "atoi", scope: !18, file: !18, line: 104, type: !53, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!53 = !DISubroutineType(types: !54)
!54 = !{!12, !49}
!55 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !56, file: !25, line: 142)
!56 = !DISubprogram(name: "atol", scope: !18, file: !18, line: 107, type: !57, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!57 = !DISubroutineType(types: !58)
!58 = !{!31, !49}
!59 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !60, file: !25, line: 143)
!60 = !DISubprogram(name: "bsearch", scope: !18, file: !18, line: 817, type: !61, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!61 = !DISubroutineType(types: !62)
!62 = !{!63, !64, !64, !66, !66, !69}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !67, line: 62, baseType: !68)
!67 = !DIFile(filename: "/usr/include/clang/6.0.0/include/stddef.h", directory: "/home/linux/Desktop/Mult-target-directed-fuzzing-main/examples")
!68 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !18, line: 805, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{!12, !64, !64}
!73 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !74, file: !25, line: 144)
!74 = !DISubprogram(name: "calloc", scope: !18, file: !18, line: 541, type: !75, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!75 = !DISubroutineType(types: !76)
!76 = !{!63, !66, !66}
!77 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !78, file: !25, line: 145)
!78 = !DISubprogram(name: "div", scope: !18, file: !18, line: 849, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!79 = !DISubroutineType(types: !80)
!80 = !{!23, !12, !12}
!81 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !82, file: !25, line: 146)
!82 = !DISubprogram(name: "exit", scope: !18, file: !18, line: 614, type: !83, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !12}
!85 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !86, file: !25, line: 147)
!86 = !DISubprogram(name: "free", scope: !18, file: !18, line: 563, type: !87, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!87 = !DISubroutineType(types: !88)
!88 = !{null, !63}
!89 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !90, file: !25, line: 148)
!90 = !DISubprogram(name: "getenv", scope: !18, file: !18, line: 631, type: !91, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!91 = !DISubroutineType(types: !92)
!92 = !{!4, !49}
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !94, file: !25, line: 149)
!94 = !DISubprogram(name: "labs", scope: !18, file: !18, line: 838, type: !95, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!95 = !DISubroutineType(types: !96)
!96 = !{!31, !31}
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !98, file: !25, line: 150)
!98 = !DISubprogram(name: "ldiv", scope: !18, file: !18, line: 851, type: !99, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!99 = !DISubroutineType(types: !100)
!100 = !{!27, !31, !31}
!101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !102, file: !25, line: 151)
!102 = !DISubprogram(name: "malloc", scope: !18, file: !18, line: 539, type: !103, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!103 = !DISubroutineType(types: !104)
!104 = !{!63, !66}
!105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !106, file: !25, line: 153)
!106 = !DISubprogram(name: "mblen", scope: !18, file: !18, line: 919, type: !107, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!107 = !DISubroutineType(types: !108)
!108 = !{!12, !49, !66}
!109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !110, file: !25, line: 154)
!110 = !DISubprogram(name: "mbstowcs", scope: !18, file: !18, line: 930, type: !111, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!111 = !DISubroutineType(types: !112)
!112 = !{!66, !113, !116, !66}
!113 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!116 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !49)
!117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !118, file: !25, line: 155)
!118 = !DISubprogram(name: "mbtowc", scope: !18, file: !18, line: 922, type: !119, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!119 = !DISubroutineType(types: !120)
!120 = !{!12, !113, !116, !66}
!121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !122, file: !25, line: 157)
!122 = !DISubprogram(name: "qsort", scope: !18, file: !18, line: 827, type: !123, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !63, !66, !66, !69}
!125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !126, file: !25, line: 160)
!126 = !DISubprogram(name: "quick_exit", scope: !18, file: !18, line: 620, type: !83, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !128, file: !25, line: 163)
!128 = !DISubprogram(name: "rand", scope: !18, file: !18, line: 453, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!129 = !DISubroutineType(types: !130)
!130 = !{!12}
!131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !132, file: !25, line: 164)
!132 = !DISubprogram(name: "realloc", scope: !18, file: !18, line: 549, type: !133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!133 = !DISubroutineType(types: !134)
!134 = !{!63, !63, !66}
!135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !136, file: !25, line: 165)
!136 = !DISubprogram(name: "srand", scope: !18, file: !18, line: 455, type: !137, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!137 = !DISubroutineType(types: !138)
!138 = !{null, !139}
!139 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !141, file: !25, line: 166)
!141 = !DISubprogram(name: "strtod", scope: !18, file: !18, line: 117, type: !142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!142 = !DISubroutineType(types: !143)
!143 = !{!48, !116, !144}
!144 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !147, file: !25, line: 167)
!147 = !DISubprogram(name: "strtol", scope: !18, file: !18, line: 176, type: !148, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!148 = !DISubroutineType(types: !149)
!149 = !{!31, !116, !144, !12}
!150 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !151, file: !25, line: 168)
!151 = !DISubprogram(name: "strtoul", scope: !18, file: !18, line: 180, type: !152, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!152 = !DISubroutineType(types: !153)
!153 = !{!68, !116, !144, !12}
!154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !155, file: !25, line: 169)
!155 = !DISubprogram(name: "system", scope: !18, file: !18, line: 781, type: !53, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !157, file: !25, line: 171)
!157 = !DISubprogram(name: "wcstombs", scope: !18, file: !18, line: 933, type: !158, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!158 = !DISubroutineType(types: !159)
!159 = !{!66, !160, !161, !66}
!160 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !4)
!161 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !165, file: !25, line: 172)
!165 = !DISubprogram(name: "wctomb", scope: !18, file: !18, line: 926, type: !166, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!166 = !DISubroutineType(types: !167)
!167 = !{!12, !4, !115}
!168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !169, entity: !170, file: !25, line: 200)
!169 = !DINamespace(name: "__gnu_cxx", scope: null)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !18, line: 80, baseType: !171)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !18, line: 76, size: 128, elements: !172, identifier: "_ZTS7lldiv_t")
!172 = !{!173, !175}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !171, file: !18, line: 78, baseType: !174, size: 64)
!174 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !171, file: !18, line: 79, baseType: !174, size: 64, offset: 64)
!176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !169, entity: !177, file: !25, line: 206)
!177 = !DISubprogram(name: "_Exit", scope: !18, file: !18, line: 626, type: !83, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !169, entity: !179, file: !25, line: 210)
!179 = !DISubprogram(name: "llabs", scope: !18, file: !18, line: 841, type: !180, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!180 = !DISubroutineType(types: !181)
!181 = !{!174, !174}
!182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !169, entity: !183, file: !25, line: 216)
!183 = !DISubprogram(name: "lldiv", scope: !18, file: !18, line: 855, type: !184, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!184 = !DISubroutineType(types: !185)
!185 = !{!170, !174, !174}
!186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !169, entity: !187, file: !25, line: 227)
!187 = !DISubprogram(name: "atoll", scope: !18, file: !18, line: 112, type: !188, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!188 = !DISubroutineType(types: !189)
!189 = !{!174, !49}
!190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !169, entity: !191, file: !25, line: 228)
!191 = !DISubprogram(name: "strtoll", scope: !18, file: !18, line: 200, type: !192, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!192 = !DISubroutineType(types: !193)
!193 = !{!174, !116, !144, !12}
!194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !169, entity: !195, file: !25, line: 229)
!195 = !DISubprogram(name: "strtoull", scope: !18, file: !18, line: 205, type: !196, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!196 = !DISubroutineType(types: !197)
!197 = !{!198, !116, !144, !12}
!198 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !169, entity: !200, file: !25, line: 231)
!200 = !DISubprogram(name: "strtof", scope: !18, file: !18, line: 123, type: !201, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!201 = !DISubroutineType(types: !202)
!202 = !{!203, !116, !144}
!203 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !169, entity: !205, file: !25, line: 232)
!205 = !DISubprogram(name: "strtold", scope: !18, file: !18, line: 126, type: !206, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!206 = !DISubroutineType(types: !207)
!207 = !{!208, !116, !144}
!208 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !170, file: !25, line: 240)
!210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !177, file: !25, line: 242)
!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !179, file: !25, line: 244)
!212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !213, file: !25, line: 245)
!213 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !169, file: !25, line: 213, type: !184, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !183, file: !25, line: 246)
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !187, file: !25, line: 248)
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !200, file: !25, line: 249)
!217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !191, file: !25, line: 250)
!218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !195, file: !25, line: 251)
!219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !16, entity: !205, file: !25, line: 252)
!220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !34, file: !221, line: 38)
!221 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/stdlib.h", directory: "/home/linux/Desktop/Mult-target-directed-fuzzing-main/examples")
!222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !38, file: !221, line: 39)
!223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !82, file: !221, line: 40)
!224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !43, file: !221, line: 43)
!225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !126, file: !221, line: 46)
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !23, file: !221, line: 51)
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !27, file: !221, line: 52)
!228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !229, file: !221, line: 54)
!229 = !DISubprogram(name: "abs", linkageName: "_ZSt3absg", scope: !16, file: !21, line: 102, type: !230, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!230 = !DISubroutineType(types: !231)
!231 = !{!232, !232}
!232 = !DIBasicType(name: "__float128", size: 128, encoding: DW_ATE_float)
!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !45, file: !221, line: 55)
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !52, file: !221, line: 56)
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !56, file: !221, line: 57)
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !60, file: !221, line: 58)
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !74, file: !221, line: 59)
!238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !213, file: !221, line: 60)
!239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !86, file: !221, line: 61)
!240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !90, file: !221, line: 62)
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !94, file: !221, line: 63)
!242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !98, file: !221, line: 64)
!243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !102, file: !221, line: 65)
!244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !106, file: !221, line: 67)
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !110, file: !221, line: 68)
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !118, file: !221, line: 69)
!247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !122, file: !221, line: 71)
!248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !128, file: !221, line: 72)
!249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !132, file: !221, line: 73)
!250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !136, file: !221, line: 74)
!251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !141, file: !221, line: 75)
!252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !147, file: !221, line: 76)
!253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !151, file: !221, line: 77)
!254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !155, file: !221, line: 78)
!255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !157, file: !221, line: 80)
!256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !0, entity: !165, file: !221, line: 81)
!257 = !{i32 2, !"Dwarf Version", i32 4}
!258 = !{i32 2, !"Debug Info Version", i32 3}
!259 = !{i32 1, !"wchar_size", i32 4}
!260 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!261 = distinct !DISubprogram(name: "find_BOOM", linkageName: "_Z9find_BOOMP8_IO_FILE", scope: !1, file: !1, line: 11, type: !262, isLocal: false, isDefinition: true, scopeLine: 11, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!262 = !DISubroutineType(types: !263)
!263 = !{!6, !264}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !266, line: 7, baseType: !267)
!266 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "/home/linux/Desktop/Mult-target-directed-fuzzing-main/examples")
!267 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !268, line: 245, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!268 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/libio.h", directory: "/home/linux/Desktop/Mult-target-directed-fuzzing-main/examples")
!269 = !DILocalVariable(name: "fp", arg: 1, scope: !261, file: !1, line: 11, type: !264)
!270 = !DILocation(line: 11, column: 26, scope: !261)
!271 = !DILocalVariable(name: "signature", scope: !261, file: !1, line: 12, type: !272)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 40, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 5)
!275 = !DILocation(line: 12, column: 8, scope: !261)
!276 = !DILocation(line: 13, column: 3, scope: !261)
!277 = !DILocation(line: 13, column: 16, scope: !261)
!278 = !DILocalVariable(name: "chunkBOOM", scope: !261, file: !1, line: 14, type: !6)
!279 = !DILocation(line: 14, column: 12, scope: !261)
!280 = !DILocation(line: 17, column: 13, scope: !281)
!281 = distinct !DILexicalBlock(scope: !261, file: !1, line: 17, column: 7)
!282 = !DILocation(line: 17, column: 30, scope: !281)
!283 = !DILocation(line: 17, column: 7, scope: !281)
!284 = !DILocation(line: 17, column: 7, scope: !261)
!285 = !DILocation(line: 18, column: 16, scope: !286)
!286 = distinct !DILexicalBlock(scope: !287, file: !1, line: 18, column: 9)
!287 = distinct !DILexicalBlock(scope: !281, file: !1, line: 17, column: 35)
!288 = !DILocation(line: 18, column: 9, scope: !286)
!289 = !DILocation(line: 18, column: 9, scope: !287)
!290 = !DILocation(line: 19, column: 7, scope: !291)
!291 = distinct !DILexicalBlock(scope: !286, file: !1, line: 18, column: 36)
!292 = !DILocation(line: 20, column: 7, scope: !291)
!293 = !DILocation(line: 22, column: 3, scope: !287)
!294 = !DILocation(line: 23, column: 5, scope: !295)
!295 = distinct !DILexicalBlock(scope: !281, file: !1, line: 22, column: 10)
!296 = !DILocation(line: 24, column: 5, scope: !295)
!297 = !DILocation(line: 29, column: 3, scope: !261)
!298 = !DILocation(line: 29, column: 15, scope: !261)
!299 = !DILocation(line: 29, column: 10, scope: !261)
!300 = !DILocation(line: 29, column: 9, scope: !261)
!301 = !DILocalVariable(name: "ctype", scope: !302, file: !1, line: 30, type: !272)
!302 = distinct !DILexicalBlock(scope: !261, file: !1, line: 29, column: 20)
!303 = !DILocation(line: 30, column: 10, scope: !302)
!304 = !DILocation(line: 31, column: 5, scope: !302)
!305 = !DILocation(line: 31, column: 14, scope: !302)
!306 = !DILocalVariable(name: "csize", scope: !302, file: !1, line: 32, type: !139)
!307 = !DILocation(line: 32, column: 18, scope: !302)
!308 = !DILocalVariable(name: "cdata", scope: !302, file: !1, line: 33, type: !4)
!309 = !DILocation(line: 33, column: 11, scope: !302)
!310 = !DILocation(line: 36, column: 15, scope: !311)
!311 = distinct !DILexicalBlock(scope: !302, file: !1, line: 36, column: 9)
!312 = !DILocation(line: 36, column: 28, scope: !311)
!313 = !DILocation(line: 36, column: 9, scope: !311)
!314 = !DILocation(line: 36, column: 9, scope: !302)
!315 = !DILocation(line: 37, column: 17, scope: !316)
!316 = distinct !DILexicalBlock(scope: !317, file: !1, line: 37, column: 11)
!317 = distinct !DILexicalBlock(scope: !311, file: !1, line: 36, column: 33)
!318 = !DILocation(line: 37, column: 31, scope: !316)
!319 = !DILocation(line: 37, column: 11, scope: !316)
!320 = !DILocation(line: 37, column: 11, scope: !317)
!321 = !DILocation(line: 39, column: 33, scope: !322)
!322 = distinct !DILexicalBlock(scope: !316, file: !1, line: 37, column: 36)
!323 = !DILocation(line: 39, column: 26, scope: !322)
!324 = !DILocation(line: 39, column: 15, scope: !322)
!325 = !DILocation(line: 40, column: 13, scope: !326)
!326 = distinct !DILexicalBlock(scope: !322, file: !1, line: 40, column: 13)
!327 = !DILocation(line: 40, column: 19, scope: !326)
!328 = !DILocation(line: 40, column: 13, scope: !322)
!329 = !DILocation(line: 41, column: 11, scope: !330)
!330 = distinct !DILexicalBlock(scope: !326, file: !1, line: 40, column: 28)
!331 = !DILocation(line: 42, column: 11, scope: !330)
!332 = !DILocation(line: 45, column: 19, scope: !333)
!333 = distinct !DILexicalBlock(scope: !322, file: !1, line: 45, column: 13)
!334 = !DILocation(line: 45, column: 26, scope: !333)
!335 = !DILocation(line: 45, column: 36, scope: !333)
!336 = !DILocation(line: 45, column: 13, scope: !333)
!337 = !DILocation(line: 45, column: 13, scope: !322)
!338 = !DILocation(line: 46, column: 23, scope: !339)
!339 = distinct !DILexicalBlock(scope: !340, file: !1, line: 46, column: 15)
!340 = distinct !DILexicalBlock(scope: !333, file: !1, line: 45, column: 41)
!341 = !DILocation(line: 46, column: 16, scope: !339)
!342 = !DILocation(line: 46, column: 38, scope: !339)
!343 = !DILocation(line: 46, column: 41, scope: !339)
!344 = !DILocation(line: 46, column: 47, scope: !339)
!345 = !DILocation(line: 46, column: 15, scope: !340)
!346 = !DILocation(line: 47, column: 37, scope: !347)
!347 = distinct !DILexicalBlock(scope: !339, file: !1, line: 46, column: 53)
!348 = !DILocation(line: 47, column: 25, scope: !347)
!349 = !DILocation(line: 47, column: 23, scope: !347)
!350 = !DILocation(line: 48, column: 17, scope: !351)
!351 = distinct !DILexicalBlock(scope: !347, file: !1, line: 48, column: 17)
!352 = !DILocation(line: 48, column: 27, scope: !351)
!353 = !DILocation(line: 48, column: 17, scope: !347)
!354 = !DILocation(line: 49, column: 15, scope: !355)
!355 = distinct !DILexicalBlock(scope: !351, file: !1, line: 48, column: 36)
!356 = !DILocation(line: 50, column: 15, scope: !355)
!357 = !DILocation(line: 53, column: 40, scope: !347)
!358 = !DILocation(line: 53, column: 13, scope: !347)
!359 = !DILocation(line: 53, column: 24, scope: !347)
!360 = !DILocation(line: 53, column: 29, scope: !347)
!361 = !DILocation(line: 54, column: 17, scope: !362)
!362 = distinct !DILexicalBlock(scope: !347, file: !1, line: 54, column: 17)
!363 = !DILocation(line: 54, column: 28, scope: !362)
!364 = !DILocation(line: 54, column: 33, scope: !362)
!365 = !DILocation(line: 54, column: 17, scope: !347)
!366 = !DILocation(line: 55, column: 15, scope: !367)
!367 = distinct !DILexicalBlock(scope: !362, file: !1, line: 54, column: 42)
!368 = !DILocation(line: 56, column: 15, scope: !367)
!369 = !DILocation(line: 58, column: 20, scope: !347)
!370 = !DILocation(line: 58, column: 31, scope: !347)
!371 = !DILocation(line: 58, column: 13, scope: !347)
!372 = !DILocation(line: 60, column: 31, scope: !347)
!373 = !DILocation(line: 60, column: 13, scope: !347)
!374 = !DILocation(line: 60, column: 24, scope: !347)
!375 = !DILocation(line: 60, column: 29, scope: !347)
!376 = !DILocation(line: 62, column: 47, scope: !347)
!377 = !DILocation(line: 62, column: 40, scope: !347)
!378 = !DILocation(line: 62, column: 13, scope: !347)
!379 = !DILocation(line: 62, column: 24, scope: !347)
!380 = !DILocation(line: 62, column: 29, scope: !347)
!381 = !DILocation(line: 63, column: 17, scope: !382)
!382 = distinct !DILexicalBlock(scope: !347, file: !1, line: 63, column: 17)
!383 = !DILocation(line: 63, column: 28, scope: !382)
!384 = !DILocation(line: 63, column: 33, scope: !382)
!385 = !DILocation(line: 63, column: 17, scope: !347)
!386 = !DILocation(line: 64, column: 15, scope: !387)
!387 = distinct !DILexicalBlock(scope: !382, file: !1, line: 63, column: 42)
!388 = !DILocation(line: 65, column: 15, scope: !387)
!389 = !DILocation(line: 67, column: 20, scope: !347)
!390 = !DILocation(line: 67, column: 31, scope: !347)
!391 = !DILocation(line: 67, column: 37, scope: !347)
!392 = !DILocation(line: 67, column: 44, scope: !347)
!393 = !DILocation(line: 67, column: 13, scope: !347)
!394 = !DILocation(line: 69, column: 17, scope: !395)
!395 = distinct !DILexicalBlock(scope: !347, file: !1, line: 69, column: 17)
!396 = !DILocation(line: 69, column: 23, scope: !395)
!397 = !DILocation(line: 69, column: 17, scope: !347)
!398 = !DILocation(line: 69, column: 37, scope: !395)
!399 = !DILocation(line: 69, column: 32, scope: !395)
!400 = !DILocation(line: 70, column: 13, scope: !347)
!401 = !DILocation(line: 72, column: 9, scope: !340)
!402 = !DILocation(line: 73, column: 11, scope: !403)
!403 = distinct !DILexicalBlock(scope: !333, file: !1, line: 72, column: 16)
!404 = !DILocation(line: 74, column: 11, scope: !403)
!405 = !DILocation(line: 76, column: 7, scope: !322)
!406 = !DILocation(line: 77, column: 9, scope: !407)
!407 = distinct !DILexicalBlock(scope: !316, file: !1, line: 76, column: 14)
!408 = !DILocation(line: 78, column: 9, scope: !407)
!409 = !DILocation(line: 80, column: 5, scope: !317)
!410 = !DILocation(line: 81, column: 16, scope: !411)
!411 = distinct !DILexicalBlock(scope: !412, file: !1, line: 81, column: 11)
!412 = distinct !DILexicalBlock(scope: !311, file: !1, line: 80, column: 12)
!413 = !DILocation(line: 81, column: 11, scope: !411)
!414 = !DILocation(line: 81, column: 11, scope: !412)
!415 = !DILocation(line: 82, column: 9, scope: !416)
!416 = distinct !DILexicalBlock(scope: !411, file: !1, line: 81, column: 21)
!417 = !DILocation(line: 83, column: 9, scope: !416)
!418 = !DILocation(line: 86, column: 7, scope: !412)
!419 = !DILocation(line: 87, column: 7, scope: !412)
!420 = !DILocation(line: 91, column: 9, scope: !421)
!421 = distinct !DILexicalBlock(scope: !302, file: !1, line: 91, column: 9)
!422 = !DILocation(line: 91, column: 15, scope: !421)
!423 = !DILocation(line: 91, column: 9, scope: !302)
!424 = !DILocation(line: 91, column: 29, scope: !421)
!425 = !DILocation(line: 91, column: 24, scope: !421)
!426 = distinct !{!426, !297, !427}
!427 = !DILocation(line: 92, column: 3, scope: !261)
!428 = !DILocation(line: 95, column: 10, scope: !261)
!429 = !DILocation(line: 95, column: 3, scope: !261)
!430 = distinct !DISubprogram(name: "process_BOOM", linkageName: "_Z12process_BOOMP7chunk_t", scope: !1, file: !1, line: 98, type: !431, isLocal: false, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !6}
!433 = !DILocalVariable(name: "chunkBOOM", arg: 1, scope: !430, file: !1, line: 98, type: !6)
!434 = !DILocation(line: 98, column: 28, scope: !430)
!435 = !DILocalVariable(name: "x", scope: !430, file: !1, line: 99, type: !139)
!436 = !DILocation(line: 99, column: 16, scope: !430)
!437 = !DILocalVariable(name: "y", scope: !430, file: !1, line: 99, type: !139)
!438 = !DILocation(line: 99, column: 19, scope: !430)
!439 = !DILocalVariable(name: "z", scope: !430, file: !1, line: 99, type: !139)
!440 = !DILocation(line: 99, column: 22, scope: !430)
!441 = !DILocation(line: 101, column: 7, scope: !442)
!442 = distinct !DILexicalBlock(scope: !430, file: !1, line: 101, column: 7)
!443 = !DILocation(line: 101, column: 17, scope: !442)
!444 = !DILocation(line: 101, column: 7, scope: !430)
!445 = !DILocation(line: 101, column: 26, scope: !442)
!446 = !DILocation(line: 103, column: 3, scope: !430)
!447 = !DILocation(line: 103, column: 14, scope: !430)
!448 = !DILocation(line: 103, column: 25, scope: !430)
!449 = !DILocation(line: 104, column: 3, scope: !430)
!450 = !DILocation(line: 104, column: 16, scope: !430)
!451 = !DILocation(line: 104, column: 27, scope: !430)
!452 = !DILocation(line: 106, column: 7, scope: !430)
!453 = !DILocation(line: 106, column: 11, scope: !430)
!454 = !DILocation(line: 106, column: 9, scope: !430)
!455 = !DILocation(line: 106, column: 5, scope: !430)
!456 = !DILocation(line: 108, column: 8, scope: !457)
!457 = distinct !DILexicalBlock(scope: !430, file: !1, line: 108, column: 7)
!458 = !DILocation(line: 108, column: 10, scope: !457)
!459 = !DILocation(line: 108, column: 17, scope: !457)
!460 = !DILocation(line: 108, column: 21, scope: !457)
!461 = !DILocation(line: 108, column: 23, scope: !457)
!462 = !DILocation(line: 108, column: 7, scope: !430)
!463 = !DILocation(line: 109, column: 10, scope: !464)
!464 = distinct !DILexicalBlock(scope: !457, file: !1, line: 108, column: 31)
!465 = !DILocation(line: 109, column: 21, scope: !464)
!466 = !DILocation(line: 109, column: 5, scope: !464)
!467 = !DILocation(line: 110, column: 10, scope: !464)
!468 = !DILocation(line: 110, column: 21, scope: !464)
!469 = !DILocation(line: 110, column: 5, scope: !464)
!470 = !DILocation(line: 111, column: 10, scope: !464)
!471 = !DILocation(line: 111, column: 5, scope: !464)
!472 = !DILocation(line: 112, column: 3, scope: !464)
!473 = !DILocation(line: 113, column: 1, scope: !430)
!474 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 115, type: !475, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!475 = !DISubroutineType(types: !476)
!476 = !{!12, !12, !145}
!477 = !DILocalVariable(name: "argc", arg: 1, scope: !474, file: !1, line: 115, type: !12)
!478 = !DILocation(line: 115, column: 14, scope: !474)
!479 = !DILocalVariable(name: "argv", arg: 2, scope: !474, file: !1, line: 115, type: !145)
!480 = !DILocation(line: 115, column: 27, scope: !474)
!481 = !DILocalVariable(name: "fp", scope: !474, file: !1, line: 116, type: !264)
!482 = !DILocation(line: 116, column: 9, scope: !474)
!483 = !DILocation(line: 118, column: 19, scope: !484)
!484 = distinct !DILexicalBlock(scope: !474, file: !1, line: 118, column: 7)
!485 = !DILocation(line: 118, column: 13, scope: !484)
!486 = !DILocation(line: 118, column: 11, scope: !484)
!487 = !DILocation(line: 118, column: 34, scope: !484)
!488 = !DILocation(line: 118, column: 7, scope: !474)
!489 = !DILocation(line: 119, column: 5, scope: !490)
!490 = distinct !DILexicalBlock(scope: !484, file: !1, line: 118, column: 42)
!491 = !DILocation(line: 120, column: 5, scope: !490)
!492 = !DILocalVariable(name: "chunkBOOM", scope: !474, file: !1, line: 123, type: !6)
!493 = !DILocation(line: 123, column: 12, scope: !474)
!494 = !DILocation(line: 123, column: 34, scope: !474)
!495 = !DILocation(line: 123, column: 24, scope: !474)
!496 = !DILocation(line: 124, column: 16, scope: !474)
!497 = !DILocation(line: 124, column: 3, scope: !474)
!498 = !DILocation(line: 126, column: 7, scope: !499)
!499 = distinct !DILexicalBlock(scope: !474, file: !1, line: 126, column: 7)
!500 = !DILocation(line: 126, column: 17, scope: !499)
!501 = !DILocation(line: 126, column: 7, scope: !474)
!502 = !DILocation(line: 128, column: 10, scope: !503)
!503 = distinct !DILexicalBlock(scope: !499, file: !1, line: 126, column: 26)
!504 = !DILocation(line: 128, column: 21, scope: !503)
!505 = !DILocation(line: 128, column: 5, scope: !503)
!506 = !DILocation(line: 129, column: 10, scope: !503)
!507 = !DILocation(line: 129, column: 21, scope: !503)
!508 = !DILocation(line: 129, column: 5, scope: !503)
!509 = !DILocation(line: 130, column: 10, scope: !503)
!510 = !DILocation(line: 130, column: 5, scope: !503)
!511 = !DILocation(line: 131, column: 3, scope: !503)
!512 = !DILocation(line: 134, column: 10, scope: !474)
!513 = !DILocation(line: 134, column: 3, scope: !474)
!514 = !DILocation(line: 136, column: 3, scope: !474)
