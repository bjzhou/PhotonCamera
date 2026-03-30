.class Lgwh;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Ljqp;

.field private final c:Lgvb;

.field private final d:Lhif;

.field private final e:Lpic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    const-string v0, "gwh"

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    sput-object v0, Lgwh;->a:Lsdb;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public constructor <init>(Lhif;Ljqp;Lpic;Lgvb;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p4, p0, Lgwh;->c:Lgvb;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lgwh;->d:Lhif;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lgwh;->b:Ljqp;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p3, p0, Lgwh;->e:Lpic;

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
.end method


# virtual methods
.method public final a([BLpcg;Lpog;)Lgrd;
    .locals 12

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v2, v6}, Lcom/google/android/libraries/camera/exif/ExifInterface;->a(I)Lpch;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x14

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v6, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_3
    sget-object v8, Llyr;->b:Llze;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_4
    move v3, v4

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p2, p3, p1, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_81

    nop

    nop

    :goto_7
    const/4 v4, 0x0

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x3

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

    :goto_9
    invoke-direct {p3, v4}, Lgrd;-><init>([B)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget v5, Lcom/google/android/libraries/camera/exif/ExifInterface;->aj:I

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

    :goto_b
    int-to-byte p0, p0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v2, v6, v7}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lpft;

    move-result-object v6

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p2, v8, v9, v4}, Lnch;->f(JZ)Llxg;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_e
    or-int/lit8 p0, p0, 0x3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v6, :cond_0

    nop

    goto/32 :goto_73

    nop

    :cond_0
    :goto_10
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v2, p2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lpft;)V

    :goto_12
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_13
    sget-object v7, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_14
    iput-object p0, p3, Lgrd;->f:Lpsz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p2, v6}, Lpfv;->d(Landroid/location/Location;)V

    :goto_16
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_17
    invoke-static {p1}, Lpfo;->a(Lpfo;)Lpcg;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v4, Ljava/io/File;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_19
    invoke-direct {v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;-><init>()V

    :try_start_0
    invoke-virtual {v2, p1}, Lcom/google/android/libraries/camera/exif/ExifInterface;->q([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v6, p0, Lgwh;->b:Ljqp;

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast v6, Llyv;

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_1c
    sget-object v3, Lgwh;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p2, v2}, Lpic;->L(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v7}, Lrss;->h()Z

    move-result v6

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v2, v3}, Lcom/google/android/libraries/camera/exif/ExifInterface;->b(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_20
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->a:I

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

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

    :goto_22
    iput p0, p3, Lgrd;->h:I

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_23
    iget-object v6, v6, Lhif;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_25
    iput-object v2, p3, Lgrd;->a:Lpfm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p2, v0, v1}, Lpfv;->g(J)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v2, v5}, Lcom/google/android/libraries/camera/exif/ExifInterface;->b(I)Ljava/lang/Integer;

    move-result-object v5

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

    :goto_28
    if-eqz v6, :cond_1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_2a
    iput-byte p0, p3, Lgrd;->k:B

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2b
    return-object p3

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p2, p3, v6, v8}, Lpfv;->h(Lpog;Lpch;Lpch;)V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_2e
    const-string v6, ""

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v2, v6}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lpft;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_30
    iput-object p0, p3, Lgrd;->g:Lpck;

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    nop

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

    :goto_32
    sget-object p0, Lpsz;->c:Lpsz;

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_33
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->b:I

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

    nop

    :goto_34
    new-instance p2, Lpfv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_35
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->Z:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_37
    if-nez v6, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_20

    nop

    nop

    :goto_38
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_74

    nop

    :goto_39
    if-nez v6, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_4
    goto/32 :goto_77

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v6, v8}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v6

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

    :goto_3b
    iget-object p0, p0, Lgvb;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_54

    nop

    nop

    nop

    :catch_1
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    new-instance p3, Lgrd;

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_3f
    sget v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->ai:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_40
    invoke-virtual {v2, v6}, Lcom/google/android/libraries/camera/exif/ExifInterface;->k(I)Lpft;

    move-result-object v6

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const/16 p3, 0x364

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v2, v6}, Lcom/google/android/libraries/camera/exif/ExifInterface;->k(I)Lpft;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iput-object p0, p3, Lgrd;->d:Llxg;

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_44
    if-nez v5, :cond_5

    nop

    goto/32 :goto_48

    nop

    :cond_5
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_46
    iput-object v4, p3, Lgrd;->b:Ljava/io/File;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_51

    nop

    nop

    :goto_49
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_4a
    iput-wide v0, p3, Lgrd;->i:J

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4b
    sget-object p1, Lgwh;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const-string p2, "Failed to create file: "

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v2, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->a(I)Lpch;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_50
    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    move v5, v4

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-interface {v3, v4}, Lscz;->s(Ljava/lang/String;)V

    :goto_54
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_55
    check-cast v6, Landroid/location/Location;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget-byte p0, p3, Lgrd;->k:B

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

    :goto_57
    invoke-virtual {v2, v6}, Lcom/google/android/libraries/camera/exif/ExifInterface;->k(I)Lpft;

    move-result-object v6

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_58
    new-instance p0, Lpck;

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

    :goto_59
    iget-object p2, p0, Lgwh;->e:Lpic;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_5a
    iget-short p2, p2, Lpfo;->i:S

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v6, p0, Lgwh;->d:Lhif;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_5c
    iget-object p2, p0, Lgvb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    new-instance v2, Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_5e
    check-cast v3, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-nez v6, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1a

    nop

    nop

    :goto_60
    invoke-interface {v3, v4}, Lscz;->M(I)Lsdo;

    move-result-object v3

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_61
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_62
    const/16 v4, 0x365

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_63
    sget v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->G:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_64
    check-cast p2, Lnch;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v3}, Lscs;->b()Lsdo;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-static {p2}, Lpfo;->b(Lpcg;)Lpfo;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-direct {p2, v2}, Lpfv;-><init>(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-static {v2}, Lpfo;->c(Lcom/google/android/libraries/camera/exif/ExifInterface;)Lpfo;

    move-result-object p1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v2, v6, p2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lpft;

    move-result-object p2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    if-nez v3, :cond_7

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :cond_7
    goto/32 :goto_24

    nop

    nop

    :goto_6b
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->j:I

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_6c
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->j:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_6d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_6e
    const-string v4, "fail to read EXIF from JPEG byte array."

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v2, v6, v7}, Lcom/google/android/libraries/camera/exif/ExifInterface;->i(ILjava/lang/Object;)Lpft;

    move-result-object v6

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-interface {v6}, Ljqp;->c()Lrss;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_71
    iput-object v7, p3, Lgrd;->e:Lrss;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v2, v6}, Lcom/google/android/libraries/camera/exif/ExifInterface;->y(Lpft;)V

    :goto_73
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_75
    goto/32 :goto_45

    nop

    nop

    :goto_76
    iget-object p0, p0, Lgwh;->c:Lgvb;

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v7}, Lrss;->c()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_78
    iget p0, p1, Lpcg;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    sget v6, Lcom/google/android/libraries/camera/exif/ExifInterface;->a:I

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

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

    nop

    :goto_7b
    invoke-direct {p0, v3, v5}, Lpck;-><init>(II)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7d
    const/4 v4, 0x0

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

    :goto_7e
    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/32 :goto_46

    nop

    nop

    :goto_7f
    iput-object p2, p3, Lgrd;->c:Llxc;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {p0, p2}, Llxg;->a(Ljava/lang/String;)Llxc;

    move-result-object p2

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object p3, p2, Llxc;->b:Lpsf;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, v2, p3}, Lpuq;->aW([BLcom/google/android/libraries/camera/exif/ExifInterface;Lpsf;)J

    move-result-wide v8

    nop

    nop

    const-wide/16 v10, 0x0

    nop

    cmp-long p3, v8, v10

    nop

    nop

    nop

    nop

    if-lez p3, :cond_8

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    :cond_8
    const-string p3, "Expected to write a positive number of bytes to %s, instead wrote %s from byteArray of size %s"

    nop

    nop

    iget-object v6, p2, Llxc;->b:Lpsf;

    nop

    nop

    nop

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    array-length p1, p1

    nop

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-static {v4, p3, v6, v8, p1}, Lrrf;->C(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_81
    throw p0

    nop

    nop

    :goto_82
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_83
    const-string p2, "jpg"

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop
.end method
