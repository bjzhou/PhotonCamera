.class public final Lpfs;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final h:Ljava/nio/charset/Charset;

.field private static final i:S

.field private static final j:S

.field private static final k:S

.field private static final l:S

.field private static final m:S

.field private static final n:S

.field private static final o:S


# instance fields
.field public final a:Lpfk;

.field public b:I

.field public c:Lpft;

.field public d:Lpfr;

.field public e:Lpft;

.field public f:Lpft;

.field public final g:Ljava/util/TreeMap;

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:I

.field private u:[B

.field private v:I

.field private final w:Lcom/google/android/libraries/camera/exif/ExifInterface;


# direct methods
.method private final 1478a1c7833aac5e360e0ba4b0c0c568m(II)Z
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    :goto_3
    invoke-static {p0, p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->s(II)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    invoke-virtual {p0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lpfs;->w:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->h()Landroid/util/SparseIntArray;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 19e596a3e324281407eb5c11093c0152m(IJ)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    long-to-int p2, p2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    invoke-direct {p3, p1}, Lpfr;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lpfs;->g:Ljava/util/TreeMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p3, Lpfr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop
.end method

.method private final 7ecc92917e9c4556cc19f457ddc41af8m(Lpft;)V
    .locals 5

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v4, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eq v0, v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_2
    sget-short v2, Lpfs;->i:S

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, v3}, Lpft;->b(I)J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v1, Lpfp;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, v0, v1, v2}, Lpfs;->d5484163cd8d335e6b17663474ff5f2bm(IJ)V

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_6
    sget-short v2, Lpfs;->k:S

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    iget v0, p1, Lpft;->d:I

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_8
    invoke-direct {p0, v0, v1, v2}, Lpfs;->d5484163cd8d335e6b17663474ff5f2bm(IJ)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_a
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_c
    goto :goto_18

    nop

    nop

    :goto_d
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, v1, v2}, Lpfs;->1478a1c7833aac5e360e0ba4b0c0c568m(II)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_f
    if-eq v0, v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_2
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0, v4, v0, v1}, Lpfs;->d5484163cd8d335e6b17663474ff5f2bm(IJ)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-short v2, Lpfs;->l:S

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_3

    nop

    goto/32 :goto_70

    nop

    :cond_3
    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :cond_4
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    :goto_16
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget v1, p1, Lpft;->e:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    :goto_1c
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_5
    goto/32 :goto_c

    nop

    nop

    :goto_1e
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Lpfs;->g:Ljava/util/TreeMap;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {p0, v3, v0, v1}, Lpfs;->19e596a3e324281407eb5c11093c0152m(IJ)V

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1, v3}, Lpft;->b(I)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_2e

    nop

    :goto_23
    goto/32 :goto_67

    nop

    nop

    nop

    :goto_24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_25
    iget v0, p1, Lpft;->g:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {p0, v1, v0}, Lpfs;->1478a1c7833aac5e360e0ba4b0c0c568m(II)Z

    move-result v0

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_27
    return-void

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_12

    nop

    nop

    :goto_29
    invoke-direct {p0, v1, v2}, Lpfs;->1478a1c7833aac5e360e0ba4b0c0c568m(II)Z

    move-result v2

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_2a
    iget-short v0, p1, Lpft;->b:S

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_4f

    nop

    nop

    :goto_2c
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget v0, p1, Lpft;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_30
    invoke-direct {v1, p1, v3}, Lpfp;-><init>(Lpft;Z)V

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1, v3}, Lpft;->b(I)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_32
    if-eq v0, v4, :cond_6

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :cond_6
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    new-instance v0, Lpfr;

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_34
    sget-short v2, Lpfs;->n:S

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_35
    if-eq v0, v2, :cond_7

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_74

    nop

    nop

    :goto_36
    invoke-virtual {p1}, Lpft;->e()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_37
    const v0, 0x5

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_38
    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->B:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-eqz v2, :cond_8

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_70

    nop

    nop

    :goto_3b
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3c
    if-lez v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_22

    nop

    :goto_3d
    if-eq v0, v2, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    :cond_a
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p1}, Lpft;->e()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_3f
    if-nez v2, :cond_b

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_40
    if-eq v0, v2, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    :cond_c
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_41
    invoke-direct {p0, v1, v2}, Lpfs;->1478a1c7833aac5e360e0ba4b0c0c568m(II)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_42
    sget-short v2, Lpfs;->j:S

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_43
    if-eqz v2, :cond_d

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :cond_d
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-direct {p0, v3, v0, v1}, Lpfs;->19e596a3e324281407eb5c11093c0152m(IJ)V

    :goto_45
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p0, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1b

    nop

    nop

    :goto_47
    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->i:I

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_48
    long-to-int p1, v0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-lt v3, v0, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    :cond_e
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-direct {p0, v1, v2}, Lpfs;->1478a1c7833aac5e360e0ba4b0c0c568m(II)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iput-object p1, p0, Lpfs;->f:Lpft;

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_4c
    goto :goto_45

    nop

    nop

    :goto_4d
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-nez v0, :cond_f

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_f
    :goto_4f
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_28

    nop

    :goto_51
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_52
    goto/16 :goto_64

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_55
    if-eq v0, v2, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_10
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_56
    invoke-direct {v0}, Lpfr;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    :goto_57
    iget-short v0, p1, Lpft;->a:S

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_58
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_59
    if-eq v0, v2, :cond_11

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :cond_11
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_5a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p1, v3}, Lpft;->b(I)J

    move-result-wide v0

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_5d
    sget-short v2, Lpfs;->m:S

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_5e
    if-nez v0, :cond_12

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :cond_12
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_5f
    if-eqz v2, :cond_13

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_60
    sget v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->m:I

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_61
    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_62
    invoke-direct {p0, v1, v2}, Lpfs;->1478a1c7833aac5e360e0ba4b0c0c568m(II)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_63
    return-void

    nop

    nop

    :goto_64
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_65
    goto/16 :goto_16

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_67
    if-eqz p1, :cond_14

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_14
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_68
    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->C:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    goto/16 :goto_76

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_54

    nop

    nop

    :goto_6b
    sget-short v2, Lpfs;->o:S

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iget-object p0, p0, Lpfs;->g:Ljava/util/TreeMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_6d
    invoke-virtual {p1, v3}, Lpft;->b(I)J

    move-result-wide v0

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {p1, v3}, Lpft;->b(I)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_6f
    iput-object p1, p0, Lpfs;->e:Lpft;

    nop

    nop

    nop

    nop

    :goto_70
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_71
    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->al:I

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-direct {p0, v1, v2}, Lpfs;->1478a1c7833aac5e360e0ba4b0c0c568m(II)Z

    move-result v2

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_73
    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->E:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_74
    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->D:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_75
    return-void

    nop

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_42

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_18

    nop

    nop

    :goto_0
    sput-short v0, Lpfs;->o:S

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    sput-object v0, Lpfs;->h:Ljava/nio/charset/Charset;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    sget v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->D:I

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->E:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    sput-short v0, Lpfs;->i:S

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6
    sput-short v0, Lpfs;->j:S

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    sget v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->al:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->m:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    sput-short v0, Lpfs;->l:S

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    sput-short v0, Lpfs;->k:S

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    invoke-static {v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    sget v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->B:I

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_11
    sput-short v0, Lpfs;->n:S

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_12
    invoke-static {v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    sget v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->i:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sput-short v0, Lpfs;->m:S

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;->n(I)S

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_17
    sget v0, Lcom/google/android/libraries/camera/exif/ExifInterface;->C:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-string v0, "US-ASCII"

    nop

    goto/32 :goto_16

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/google/android/libraries/camera/exif/ExifInterface;)V
    .locals 5

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lpfs;->w:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_1
    iput v1, p0, Lpfs;->v:I

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2}, Lpfk;->d()S

    move-result v1

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_36

    nop

    nop

    :goto_4
    const/16 v1, 0x8

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_5
    iput-object p1, p0, Lpfs;->u:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p2}, Lpfk;->d()S

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eq v1, v4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_8
    cmp-long v1, p1, v1

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v1, p0, Lpfs;->g:Ljava/util/TreeMap;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p2, p1}, Lpfk;-><init>(Ljava/io/InputStream;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_c
    add-int/lit8 v1, v1, -0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v2, -0x28

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-wide/32 v1, 0x7fffffff

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    if-ne v1, v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_10
    if-eq p1, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_2
    goto/32 :goto_61

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p2}, Lpfk;->d()S

    move-result p1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object p2, p0, Lpfs;->a:Lpfk;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_14
    const-string v0, "Invalid offset "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_58

    nop

    :goto_16
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput v0, p0, Lpfs;->q:I

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0, v0, p1, p2}, Lpfs;->d5484163cd8d335e6b17663474ff5f2bm(IJ)V

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_1a
    add-int/lit8 v2, v2, -0x6

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_1b
    throw p0

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_1d
    int-to-long v1, v2

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {p2, v1, v2}, Lcom/google/common/io/ByteStreams;->skipFully(Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_3

    nop

    nop

    :catch_0
    :goto_1f
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-ge v2, v1, :cond_3

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_21
    if-eqz v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p2}, Lpfk;->d()S

    move-result v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_23
    new-instance p0, Lpfn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_24
    invoke-virtual {p2}, Lpfk;->d()S

    move-result v1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_47

    nop

    :goto_26
    goto/32 :goto_2e

    nop

    nop

    :goto_27
    iput-boolean p2, p0, Lpfs;->s:Z

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    goto/32 :goto_9

    nop

    nop

    :goto_29
    move p2, v0

    nop

    nop

    :goto_2a
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {p0, v2}, Lpfn;-><init>(Ljava/lang/String;)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_25

    nop

    :goto_2d
    const/16 v1, 0x4d4d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_3

    nop

    :goto_30
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-nez p1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0, p1}, Lpfs;->b([B)I

    :goto_33
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_34
    iget-boolean p1, p0, Lpfs;->s:Z

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_35
    add-int/lit8 v2, v2, -0x2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const/16 v2, -0x27

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p2}, Lpfk;->c()J

    move-result-wide p1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_3a
    const/16 v1, 0x4949

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p2, p1}, Lpfk;->e(Ljava/nio/ByteOrder;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    cmp-long p1, p1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-eq p1, v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_7
    goto/32 :goto_b

    nop

    nop

    :goto_3f
    goto/16 :goto_2a

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_41
    invoke-direct {p2, p1}, Lpfk;-><init>(Ljava/io/InputStream;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_42
    new-instance p0, Lpfn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_43
    const-string v2, "Invalid TIFF header"

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-eq p1, v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :cond_8
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_45
    new-instance v1, Ljava/util/TreeMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_46
    throw p0

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_5b

    nop

    nop

    :goto_48
    new-instance p0, Lpfn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_49
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_4a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p2}, Lpfk;->d()S

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_4d
    new-instance p2, Lpfk;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_4e
    invoke-virtual {p2}, Lpfk;->b()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    if-eqz v2, :cond_9

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    const v1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_51
    const v4, 0x45786966

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p2}, Lpfk;->a()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-eq v1, v3, :cond_a

    nop

    nop

    goto/32 :goto_40

    nop

    :cond_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const-string p2, "CAM_ExifParser"

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_55
    iput v0, p0, Lpfs;->p:I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_56
    invoke-static {p1, p2, v0}, Lmf;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p2, p1}, Lpfk;->e(Ljava/nio/ByteOrder;)V

    :goto_58
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_59
    const-string v1, "Invalid JPEG format."

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iput v2, p0, Lpfs;->t:I

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_5c
    iput-boolean v0, p0, Lpfs;->s:Z

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_5d
    iput v0, p0, Lpfs;->b:I

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    const/16 v3, -0x1f

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_5f
    new-instance p2, Lpfk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_60
    const/4 p2, 0x1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_62
    new-array p1, v1, [B

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_63
    throw p0

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_65
    invoke-static {v1}, Lpuq;->bH(S)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_66
    const/16 v1, 0x2a

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_67
    invoke-direct {p0, p1}, Lpfn;-><init>(Ljava/lang/String;)V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-direct {p0, v2}, Lpfn;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_69
    const v0, 0x18

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_6a
    if-lez v1, :cond_b

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :cond_b
    goto/32 :goto_6d

    nop

    nop

    :goto_6b
    if-eqz p1, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    if-eq v1, v2, :cond_d

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    long-to-int v1, p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6e
    if-ge v2, v1, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    goto/16 :goto_33

    nop

    nop

    nop

    nop

    :goto_70
    goto/32 :goto_11

    nop

    nop

    :goto_71
    const-wide/16 v2, 0x8

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final d5484163cd8d335e6b17663474ff5f2bm(IJ)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p3, p1}, Lpfq;-><init>(I)V

    goto/32 :goto_4

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lpfs;->g:Ljava/util/TreeMap;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p3, Lpfq;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    long-to-int p2, p2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 19

    goto/32 :goto_ea

    nop

    nop

    :goto_0
    if-ne v3, v1, :cond_0

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_67

    nop

    nop

    nop

    :goto_1
    if-ne v3, v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v7, :cond_2

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a7

    nop

    nop

    :goto_3
    iget v4, v0, Lpfs;->q:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v1

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_5
    iget-object v1, v0, Lpfs;->g:Ljava/util/TreeMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    :goto_7
    const v1, 0x1e

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, v10, v11, v12}, Lpfs;->d5484163cd8d335e6b17663474ff5f2bm(IJ)V

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_a
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct/range {v11 .. v16}, Lpft;-><init>(SSIIZ)V

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-boolean v10, v0, Lpfs;->r:Z

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_e
    return v10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_31

    nop

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_11
    add-int/2addr v4, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    :goto_12
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    :cond_3
    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move v14, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0, v1}, Lpfs;->7ecc92917e9c4556cc19f457ddc41af8m(Lpft;)V

    :goto_15
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int/lit8 v4, v4, -0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v10, 0x1

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-wide/16 v2, 0x4

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v1, :cond_4

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_eb

    nop

    nop

    nop

    :goto_1b
    move v1, v9

    nop

    nop

    :goto_1c
    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    cmp-long v1, v13, v17

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput v1, v2, Lpft;->g:I

    nop

    :goto_1f
    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_21
    if-eqz v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_22
    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/16 v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    :goto_24
    const/4 v2, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move-object/from16 v0, p0

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v2, v3}, Lpft;->i([B)Z

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v0, v1}, Lpfn;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4b

    nop

    nop

    :goto_28
    const/4 v5, 0x2

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual/range {p0 .. p0}, Lpfs;->a()I

    move-result v0

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_2a
    return v8

    nop

    nop

    :goto_2b
    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_2c
    check-cast v3, Lpfp;

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v4, v0, Lpfs;->a:Lpfk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    :goto_2e
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_2f
    const-string v3, "Invalid size of link to next IFD: "

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_30
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_31
    new-instance v0, Lpfn;

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {v1, v2, v3}, Lcom/google/common/io/ByteStreams;->skipFully(Ljava/io/InputStream;J)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    :goto_34
    if-lez v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_6
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_35
    new-instance v2, Lpft;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    :goto_36
    const/4 v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_37
    add-int/2addr v4, v5

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v1}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    long-to-int v1, v4

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_3c

    nop

    :goto_3b
    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {v1, v3}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-eq v3, v1, :cond_7

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :cond_7
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_40
    int-to-long v3, v9

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_41
    cmp-long v1, v11, v3

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-ne v3, v6, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :cond_8
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_43
    iget-boolean v1, v2, Lpft;->c:Z

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_44
    move v13, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const-string v1, " for "

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_1f

    nop

    nop

    :goto_47
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_48
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_49
    goto/16 :goto_f8

    nop

    nop

    :goto_4a
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_4b
    throw v0

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_4d
    mul-int/lit8 v4, v4, 0xc

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4e
    long-to-int v4, v4

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    sget v1, Lpft;->h:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_50
    iget-boolean v0, v3, Lpfq;->b:Z

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_51
    iget v1, v0, Lpfs;->t:I

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    instance-of v4, v3, Lpfq;

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_53
    sub-int/2addr v1, v11

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_1c

    nop

    nop

    :goto_55
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v1, v0, Lpfs;->g:Ljava/util/TreeMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_57
    add-int/lit8 v1, v1, -0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_58
    iget v6, v0, Lpfs;->q:I

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget v1, v0, Lpfs;->b:I

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const-string v1, "Number of component is larger then Integer.MAX_VALUE"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    if-eq v3, v6, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    :cond_9
    goto/32 :goto_fd

    nop

    nop

    nop

    :goto_5c
    throw v0

    nop

    :goto_5d
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v0, v1}, Lpfs;->e(Lpft;)V

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_5f
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_60
    if-eqz v1, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_99

    nop

    nop

    nop

    :goto_61
    if-ne v3, v4, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    :cond_b
    goto/32 :goto_100

    nop

    nop

    nop

    :goto_62
    iget-object v4, v0, Lpfs;->a:Lpfk;

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v1}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_64
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-direct {v0, v1}, Lpfs;->7ecc92917e9c4556cc19f457ddc41af8m(Lpft;)V

    :goto_66
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_67
    if-ne v3, v9, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :cond_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iput v4, v0, Lpfs;->b:I

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_6a
    iput-boolean v8, v2, Lpft;->c:Z

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_6b
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_6c
    const-string v2, "Tag %04x: Invalid data type %d"

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    :goto_6d
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    iget v4, v0, Lpfs;->p:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_70
    move-object v11, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_72
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_73
    invoke-static {v6, v4, v3, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    const/16 v1, 0xa

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_75
    goto/16 :goto_f8

    nop

    nop

    :goto_76
    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_77
    iput-object v3, v0, Lpfs;->d:Lpfr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_78
    if-eqz v1, :cond_d

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_79
    const/4 v9, 0x4

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iput-object v1, v0, Lpfs;->c:Lpft;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_7c
    iget-boolean v1, v3, Lpfp;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    check-cast v3, Lpfr;

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    if-nez v2, :cond_e

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :cond_e
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    move/from16 v16, v8

    nop

    :goto_80
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_81
    const-string v1, "offset is larger then Integer.MAX_VALUE"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    goto/16 :goto_90

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_52

    nop

    nop

    :goto_83
    if-nez v4, :cond_10

    nop

    goto/32 :goto_de

    nop

    :cond_10
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    if-ne v3, v5, :cond_11

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_85
    if-lt v3, v4, :cond_12

    nop

    nop

    goto/32 :goto_4c

    nop

    :cond_12
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    const-string v1, "Invalid link to next IFD: "

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_87
    goto/16 :goto_b6

    nop

    nop

    :goto_88
    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_89
    if-ne v3, v10, :cond_13

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {v1}, Lpfk;->d()S

    move-result v12

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_8b
    iget-object v1, v0, Lpfs;->a:Lpfk;

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    :goto_8c
    long-to-int v1, v13

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_8d
    iget v1, v1, Lpfk;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_8e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    nop

    nop

    iget-object v9, v0, Lpfs;->a:Lpfk;

    nop

    nop

    iget v11, v9, Lpfk;->a:I

    nop

    nop

    int-to-long v11, v11

    nop

    int-to-long v13, v4

    nop

    sub-long/2addr v13, v11

    nop

    nop

    nop

    nop

    invoke-static {v9, v13, v14}, Lcom/google/common/io/ByteStreams;->skipFully(Ljava/io/InputStream;J)V

    :goto_90
    iget-object v9, v0, Lpfs;->g:Ljava/util/TreeMap;

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v9

    nop

    nop

    nop

    nop

    if-nez v9, :cond_f

    nop

    nop

    iget-object v9, v0, Lpfs;->g:Ljava/util/TreeMap;

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    check-cast v9, Ljava/lang/Integer;

    nop

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    nop

    nop

    nop

    if-ge v9, v4, :cond_f

    nop

    nop

    nop

    nop

    iget-object v9, v0, Lpfs;->g:Ljava/util/TreeMap;

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_82

    nop

    nop

    :goto_91
    goto/16 :goto_88

    nop

    nop

    nop

    :goto_92
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_33

    nop

    nop

    :goto_94
    const-string v9, "Failed to skip to data at: "

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iget-object v1, v0, Lpfs;->c:Lpft;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_96
    iget-object v1, v0, Lpfs;->g:Ljava/util/TreeMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_97
    iget-object v1, v0, Lpfs;->a:Lpfk;

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual {v4}, Lpfk;->c()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    :goto_99
    invoke-virtual/range {p0 .. p0}, Lpfs;->d()J

    move-result-wide v11

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iget-object v6, v0, Lpfs;->u:[B

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    iput v1, v2, Lpft;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_9d
    const/4 v8, 0x0

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {v1}, Lpfk;->d()S

    move-result v3

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_9f
    if-lez v0, :cond_14

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_14
    goto/32 :goto_3b

    nop

    :goto_a0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_a1
    iget-boolean v1, v0, Lpfs;->s:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_a2
    if-nez v1, :cond_15

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    :cond_15
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    iget-object v1, v3, Lpfp;->a:Lpft;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    const-string v3, "Invalid size of IFD "

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    move/from16 v16, v10

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_a6
    iget v11, v11, Lpfk;->a:I

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    iget v7, v0, Lpfs;->v:I

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {v1}, Lpfk;->c()J

    move-result-wide v13

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    :goto_a9
    invoke-virtual {v0, v2}, Lpfs;->e(Lpft;)V

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_aa
    goto/16 :goto_f8

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    iget-object v1, v0, Lpfs;->a:Lpfk;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    move v10, v8

    nop

    :goto_af
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b0
    iget v4, v3, Lpfq;->a:I

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_ac

    nop

    nop

    :goto_b2
    iget v0, v3, Lpfr;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :goto_b5
    move-object v1, v2

    nop

    nop

    nop

    nop

    :goto_b6
    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_b7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_b8
    if-ne v1, v5, :cond_16

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    :cond_16
    goto/32 :goto_ae

    nop

    nop

    :goto_b9
    if-ne v4, v6, :cond_17

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_17
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    iget v3, v1, Lpfk;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_bb
    if-ltz v7, :cond_18

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_bc
    cmp-long v1, v11, v3

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-direct {v0, v1}, Lpfn;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_be
    iput-boolean v1, v2, Lpft;->c:Z

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_bf
    mul-int/lit8 v6, v6, 0xc

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    check-cast v3, Lpfq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    invoke-virtual {v4}, Lpfk;->b()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_c2
    add-int/2addr v4, v6

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_c3
    const-string v1, ", the file may be broken."

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    const/4 v6, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    iget-short v4, v1, Lpft;->b:S

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    int-to-long v11, v7

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_c7
    iget v0, v0, Lpfs;->b:I

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    return v0

    nop

    nop

    :goto_c9
    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    cmp-long v7, v4, v11

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_cb
    return v5

    nop

    :catch_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_cc
    if-ne v1, v10, :cond_19

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    :cond_19
    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    if-nez v1, :cond_1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_ce
    add-int/2addr v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    if-nez v1, :cond_1b

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    const-wide/16 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    iget-object v11, v0, Lpfs;->a:Lpfk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_d2
    iput v1, v0, Lpfs;->p:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_d3
    iput-object v1, v0, Lpfs;->c:Lpft;

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    invoke-static {v11, v12, v1}, Lmf;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    :goto_d5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    instance-of v1, v3, Lpfr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    :goto_d7
    invoke-static {v1, v3, v4}, Lcom/google/common/io/ByteStreams;->skipFully(Ljava/io/InputStream;J)V

    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_d8
    invoke-virtual {v2}, Lpft;->a()I

    move-result v4

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    :goto_d9
    iget v15, v0, Lpfs;->b:I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_da
    iput v4, v0, Lpfs;->q:I

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_db
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_dc
    const-string v7, "CAM_ExifParser"

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_dd
    return v2

    nop

    :goto_de
    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_df
    iget-boolean v2, v0, Lpfs;->r:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    goto/16 :goto_80

    nop

    nop

    nop

    :goto_e1
    goto/32 :goto_7f

    nop

    nop

    :goto_e2
    if-ne v3, v1, :cond_1c

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    if-gt v4, v9, :cond_1d

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_e4
    return v0

    nop

    :goto_e5
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_e6
    if-le v4, v1, :cond_1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_1e
    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    new-instance v0, Lpfn;

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_e8
    if-nez v1, :cond_1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    if-eqz v1, :cond_20

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_eb
    return v2

    nop

    nop

    nop

    nop

    :goto_ec
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    cmp-long v7, v4, v17

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_ef
    iget-object v1, v0, Lpfs;->g:Ljava/util/TreeMap;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f0
    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_f1
    if-lt v1, v9, :cond_21

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :cond_21
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_f2
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_dd

    nop

    nop

    :goto_f3
    invoke-virtual/range {p0 .. p0}, Lpfs;->d()J

    move-result-wide v11

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_f4
    if-nez v1, :cond_22

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    :cond_22
    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_f6
    iget v1, v0, Lpfs;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_f7
    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f8
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_fc

    nop

    nop

    :goto_fa
    sub-int/2addr v9, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    iget-object v1, v0, Lpfs;->a:Lpfk;

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_fc
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_fd
    new-array v3, v1, [B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    if-nez v1, :cond_23

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_7d

    nop

    nop

    :goto_ff
    const-wide/32 v17, 0x7fffffff

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_100
    goto :goto_f8

    nop

    nop

    nop

    nop

    :goto_101
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b([B)I
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, v1, v0}, Lcom/google/common/io/ByteStreams;->read(Ljava/io/InputStream;[BII)I

    move-result p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    array-length v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iget-object p0, p0, Lpfs;->a:Lpfk;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x6

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_b
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final c()I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lpfk;->a()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lpfs;->a:Lpfk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final d()J
    .locals 4

    goto/32 :goto_4

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    :goto_1
    const-wide v2, 0xffffffffL

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    int-to-long v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    return-wide v0

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    :goto_9
    const v1, 0x15

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lpfs;->c()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    and-long/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop
.end method

.method public final e(Lpft;)V
    .locals 8

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_0
    iget v2, v2, Lpfk;->a:I

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :pswitch_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_5
    iget v0, p1, Lpft;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a0

    nop

    nop

    :goto_9
    const v1, 0x2

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch

    :goto_c
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0, v2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-gtz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v1, v1, Lpfk;->a:I

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1, v2}, Lpft;->k([J)Z

    goto/32 :goto_3

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1d

    nop

    nop

    :goto_13
    goto/16 :goto_ab

    nop

    nop

    :goto_14
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_15
    iget v0, p1, Lpft;->d:I

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_17
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lpfs;->c()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_1a
    iget v0, p1, Lpft;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v1, "Invalid thumbnail offset: "

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_1c
    new-array v0, v0, [B

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object v1, Lpfs;->h:Ljava/nio/charset/Charset;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1f
    new-array v2, v0, [Lpch;

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_23
    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget v0, p1, Lpft;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Lpfs;->d()J

    move-result-wide v3

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_26
    instance-of v1, v0, Lpfr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0, v2, v0}, Lpfk;->f([BI)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return-void

    nop

    :pswitch_1
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_29
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance v7, Lpch;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    int-to-long v5, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    aput-wide v3, v2, v1

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v5, "Tag value for tag: \n"

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_2e
    iget-object v1, p0, Lpfs;->g:Ljava/util/TreeMap;

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0, v0}, Lpfs;->b([B)I

    goto/32 :goto_af

    nop

    nop

    :goto_30
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_32
    new-instance p0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_33
    return-void

    nop

    nop

    :pswitch_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_34
    sub-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_35
    new-array v2, v0, [B

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_36
    new-array v2, v0, [I

    nop

    nop

    :goto_37
    goto/32 :goto_3a

    nop

    nop

    :goto_38
    iput v0, p1, Lpft;->d:I

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-lt v1, v0, :cond_2

    nop

    nop

    goto/32 :goto_a4

    nop

    :cond_2
    goto/32 :goto_bb

    nop

    nop

    :goto_3b
    if-lt v1, v0, :cond_3

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_60

    nop

    nop

    :goto_3e
    goto/16 :goto_7c

    nop

    nop

    :goto_3f
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p1, v2}, Lpft;->l([Lpch;)Z

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_41
    int-to-char v3, v3

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_44
    invoke-virtual {p1, p0}, Lpft;->h(Ljava/lang/String;)Z

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_45
    new-array v2, v0, [Lpch;

    nop

    nop

    :goto_46
    goto/32 :goto_65

    nop

    nop

    :goto_47
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_49
    iget v0, p1, Lpft;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_4a
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p0}, Lpfs;->c()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v3}, Lpfk;->d()S

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    return-void

    nop

    nop

    :pswitch_3
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    if-ne v0, v1, :cond_5

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_98

    nop

    nop

    :goto_50
    goto/16 :goto_31

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_8e

    nop

    nop

    :goto_52
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_53
    int-to-long v3, v4

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    if-eq v0, v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    :cond_7
    :goto_56
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_58
    if-lez v0, :cond_8

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_5f

    nop

    :goto_59
    const-string v1, "Thumbnail overlaps value for tag: \n"

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget v0, p1, Lpft;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p1}, Lpft;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_5c
    aput v3, v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v0}, Lpft;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget v0, p1, Lpft;->d:I

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_61
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v0, p0, Lpfs;->g:Ljava/util/TreeMap;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_64
    iget-object v1, p0, Lpfs;->g:Ljava/util/TreeMap;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_65
    if-lt v1, v0, :cond_9

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_25

    nop

    nop

    :goto_66
    invoke-virtual {p1, v2}, Lpft;->l([Lpch;)Z

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_67
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_68
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_6a
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {p0}, Lpfs;->c()I

    move-result v4

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_6e
    check-cast v0, Lpfq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {p0}, Lpfs;->d()J

    move-result-wide v5

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_70
    aput-object v7, v2, v1

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v1}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    return-void

    nop

    :pswitch_4
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {p1, v2}, Lpft;->j([I)Z

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    new-instance v7, Lpch;

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_75
    invoke-virtual {p1, v2}, Lpft;->j([I)Z

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {p1}, Lpft;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    if-ne v0, v1, :cond_a

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_7b
    new-array v2, v0, [I

    nop

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    :goto_7e
    iget-object v0, p0, Lpfs;->g:Ljava/util/TreeMap;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_7f
    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_80
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_81
    const/4 v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_82
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    :pswitch_5
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_84
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_85
    return-void

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_92

    nop

    nop

    :goto_86
    iget-object v0, v0, Lpfp;->a:Lpft;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {p0}, Lpfs;->d()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_88
    if-eqz v1, :cond_b

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_2e

    nop

    nop

    :goto_89
    check-cast v0, Lpfp;

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_8a
    invoke-direct {v7, v3, v4, v5, v6}, Lpch;-><init>(JJ)V

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_8c
    iget-object v0, p0, Lpfs;->g:Ljava/util/TreeMap;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_8e
    instance-of v1, v0, Lpfp;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iget-object p0, p0, Lpfs;->a:Lpfk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_92
    iget v0, p1, Lpft;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    aput v3, v2, v1

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_95
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_98
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_99
    instance-of v1, v0, Lpfq;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9a
    iget-object v1, p0, Lpfs;->a:Lpfk;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9b
    iget-short v0, p1, Lpft;->b:S

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_9c
    goto/16 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_9f
    const-string v4, "Invalid size of tag: \n"

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_8d

    nop

    nop

    :goto_a1
    const-string p0, ""

    nop

    nop

    nop

    nop

    :goto_a2
    goto/32 :goto_44

    nop

    nop

    :goto_a3
    goto/16 :goto_37

    nop

    nop

    nop

    :goto_a4
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    goto/16 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_a7
    const-string v1, " setting count to: "

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    iget-short v0, p1, Lpft;->b:S

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_a9
    return-void

    nop

    nop

    :pswitch_7
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_aa
    new-array v2, v0, [J

    nop

    nop

    nop

    nop

    :goto_ab
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-virtual {p1}, Lpft;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    if-lt v1, v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_ae
    aput-object v7, v2, v1

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    invoke-virtual {p1, v0}, Lpft;->i([B)Z

    goto/32 :goto_b

    nop

    nop

    :goto_b0
    if-lt v1, v2, :cond_d

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-virtual {p1}, Lpft;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_b2
    invoke-direct {v7, v5, v6, v3, v4}, Lpch;-><init>(JJ)V

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    const-string v2, "CAM_ExifParser"

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_b5
    goto/16 :goto_a2

    nop

    :goto_b6
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    if-lt v1, v0, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    :cond_e
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_ba
    iget v0, v0, Lpfq;->a:I

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_bb
    iget-object v3, p0, Lpfs;->a:Lpfk;

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_bc
    sget-object v3, Lcom/google/android/apps/camera/jni/microvideotonemap/EeD/yHEIcF;->EYDSEdWkE:Ljava/lang/String;

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    add-int/2addr v2, v0

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_be
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    iget-object v2, p0, Lpfs;->a:Lpfk;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    const-string v5, "Ifd "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method
