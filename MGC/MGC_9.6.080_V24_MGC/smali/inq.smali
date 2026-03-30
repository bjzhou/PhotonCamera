.class final Linq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lins;

.field private final b:Lsuu;

.field private final c:Z

.field private final d:Lcom/google/googlex/gcam/ShotMetadata;

.field private final e:I

.field private final f:J

.field private final g:Lrss;

.field private final h:Lgii;

.field private final i:Lnar;


# direct methods
.method public constructor <init>(Lins;Lnar;Lsuu;ZLcom/google/googlex/gcam/ShotMetadata;IJLrss;Lgii;)V
    .locals 0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Linq;->i:Lnar;

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

    :goto_1
    iput-object p3, p0, Linq;->b:Lsuu;

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

    :goto_2
    iput-object p10, p0, Linq;->h:Lgii;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p9, p0, Linq;->g:Lrss;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-wide p7, p0, Linq;->f:J

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    iput-boolean p4, p0, Linq;->c:Z

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput p6, p0, Linq;->e:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p5, p0, Linq;->d:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    iput-object p1, p0, Linq;->a:Lins;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 13

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v0, Lscz;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2
    check-cast v1, Lrss;

    nop

    nop

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

    :goto_3
    goto/16 :goto_81

    nop

    :goto_4
    goto/32 :goto_66

    nop

    nop

    nop

    :goto_5
    iget-object v3, v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->bB:Lpfl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    :goto_6
    invoke-virtual {v1, v4, v3, v2, v5}, Lnpr;->l(Landroid/graphics/Bitmap;ILpog;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;-><init>()V

    :try_start_0
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, [B

    nop

    nop

    nop

    invoke-virtual {v11, v1, v4}, Lcom/google/android/libraries/camera/exif/ExifInterface;->r([BZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_4c

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_53

    nop

    :cond_0
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v2, p0, Linq;->h:Lgii;

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

    :goto_d
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    iget v3, p0, Linq;->e:I

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b3

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->c()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v11, v3}, Lcom/google/android/libraries/camera/exif/ExifInterface;->a(I)Lpch;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v2}, Lgii;->b()Lrss;

    move-result-object v2

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

    :goto_14
    invoke-virtual {v1, v3, v4}, Lpfv;->g(J)V

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    :cond_1
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v3, v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->bB:Lpfl;

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v3, v5, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_19
    invoke-virtual {v2}, Lscs;->b()Lsdo;

    move-result-object v2

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v1, "Error encoding burst image"

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1b
    invoke-virtual {v2}, Lrss;->h()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v1}, Lcom/google/googlex/gcam/JpgEncodeOptions;-><init>()V

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_54

    nop

    :goto_1e
    const/16 v1, 0x69a

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_1f
    const/16 v4, 0x69c

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static/range {v7 .. v12}, Lqqd;->a(J[BLpck;Lcom/google/android/libraries/camera/exif/ExifInterface;Lpic;)Lqqd;

    move-result-object v0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v1, v0, Lnar;->a:Ljava/lang/Object;

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

    :goto_22
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_23
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_62

    nop

    nop

    :goto_24
    iget-object p0, p0, Linq;->b:Lsuu;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v3, v4, v2, v1}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_26
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-eqz v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

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

    :goto_29
    const-string v6, ""

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

    :goto_2a
    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_2b
    const/16 v3, 0x3c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    :goto_2c
    iget-boolean v2, p0, Linq;->c:Z

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v3}, Lpfo;->a(Lpfo;)Lpcg;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_2e
    check-cast v0, Landroid/hardware/HardwareBuffer;

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

    :goto_2f
    check-cast v2, Ljava/lang/String;

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

    :goto_30
    if-eqz v3, :cond_5

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v1, p0, Linq;->d:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v1, v1, Lins;->f:Lnpr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p0, v0}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_52

    nop

    nop

    :goto_34
    check-cast v0, Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v1, v2}, Lpfv;->d(Landroid/location/Location;)V

    :goto_36
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    int-to-long v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_38
    iget-object v2, p0, Linq;->d:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v1}, Lcom/google/googlex/gcam/ShotMetadata;->b()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v1, p0, Linq;->a:Lins;

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    :cond_6
    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_3c
    iget-object v6, p0, Linq;->d:Lcom/google/googlex/gcam/ShotMetadata;

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

    nop

    :goto_3d
    invoke-virtual {v1, v2, v3, v4}, Lpfv;->h(Lpog;Lpch;Lpch;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3e
    return-void

    nop

    nop

    :goto_3f
    goto/32 :goto_a

    nop

    nop

    :goto_40
    const-wide/16 v3, 0x3e8

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_42
    new-instance v6, Lpck;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_43
    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v3}, Lpfl;->f()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v1, p0, Linq;->d:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_47
    check-cast v9, [B

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p0, v0}, Lsuu;->a(Ljava/lang/Throwable;)Z

    :goto_49
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_4a
    aget v3, v1, v5

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_4b
    invoke-virtual {v1}, Lcom/google/googlex/gcam/LockedHardwareBuffer;->a()Lcom/google/googlex/gcam/InterleavedReadViewU8;

    move-result-object v0

    nop

    :goto_4c
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iput-object v1, v3, Lpfl;->b:[B

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    sget-object v0, Lins;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v2, v6}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

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

    nop

    :goto_51
    invoke-direct {v1, v0, v2, v3}, Lcom/google/googlex/gcam/LockedHardwareBuffer;-><init>(Landroid/hardware/HardwareBuffer;J)V

    goto/32 :goto_4b

    nop

    nop

    :goto_52
    return-void

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_3f

    nop

    nop

    :goto_55
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    div-long/2addr v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-static {v0, v1, v3}, Lcom/google/googlex/gcam/imageio/JpgHelper;->a(Lcom/google/googlex/gcam/InterleavedReadViewU8;Lcom/google/googlex/gcam/JpgEncodeOptions;Lsxp;)Lrss;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget v1, v1, Lpck;->b:I

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_59
    invoke-direct {v6, v3, v1}, Lpck;-><init>(II)V

    goto/32 :goto_67

    nop

    nop

    :goto_5a
    iget-object v2, v1, Lins;->d:Lkog;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v1, v2}, Lnpr;->m(Lpog;)Z

    move-result v3

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

    nop

    :goto_5c
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_5d
    goto/16 :goto_81

    nop

    :goto_5e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-static {v11}, Lpfo;->c(Lcom/google/android/libraries/camera/exif/ExifInterface;)Lpfo;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v6, v2}, Lcom/google/googlex/gcam/ShotMetadata;->j(Ljava/lang/String;)V

    :goto_61
    goto/32 :goto_93

    nop

    nop

    nop

    :goto_62
    iget-object p0, p0, Linq;->b:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v3, v3, Lpfl;->b:[B

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_64
    add-long v7, v1, v3

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_65
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_66
    array-length v4, v3

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget-object v1, p0, Linq;->d:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iget-object v0, v0, Lnar;->b:Ljava/lang/Object;

    nop

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

    :goto_69
    check-cast v0, Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_6a
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v1

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_6b
    const-wide/16 v2, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_6c
    if-nez v4, :cond_7

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_6d
    iget-object v2, p0, Linq;->h:Lgii;

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_6e
    const/4 v4, 0x0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    new-instance v11, Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_70
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iget-object v2, p0, Linq;->g:Lrss;

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/JpgEncodeOptions;->b(Lcom/google/googlex/gcam/ShotMetadata;)V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_75
    if-nez v1, :cond_8

    nop

    goto/32 :goto_ae

    nop

    :cond_8
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_76
    new-instance v1, Lpck;

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v2}, Lcom/google/googlex/gcam/ShotMetadata;->e()Lsxp;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_78
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_79
    iget-object v3, v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->bB:Lpfl;

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

    :goto_7a
    move-object v9, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_7b
    new-instance v6, Linn;

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    :goto_7c
    invoke-direct {v1, v11}, Lpfv;-><init>(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_7d
    sget v4, Lcom/google/android/libraries/camera/exif/ExifInterface;->G:I

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_7e
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {v2}, Lgii;->b()Lrss;

    move-result-object v2

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {v3}, Lpfl;->g()Z

    :goto_81
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_82
    const-string v1, "Image couldn\'t be encoded."

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

    :goto_83
    iget-object v3, v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->bB:Lpfl;

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

    :goto_84
    const v0, 0x16

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_85
    if-nez v2, :cond_9

    nop

    goto/32 :goto_9

    nop

    :cond_9
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v11, v4}, Lcom/google/android/libraries/camera/exif/ExifInterface;->a(I)Lpch;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

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

    nop

    nop

    :goto_88
    if-eqz v6, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_89
    if-nez v2, :cond_b

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_8b
    iget-object v1, v1, Lins;->f:Lnpr;

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_8c
    iget v3, v1, Lpck;->a:I

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iget v3, v3, Lpcg;->e:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    const-string v3, "Unable to parse exif from jpeg data."

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    new-instance v1, Lcom/google/googlex/gcam/LockedHardwareBuffer;

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_90
    iget-object v0, p0, Linq;->i:Lnar;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    new-instance v0, Ljava/lang/RuntimeException;

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_92
    check-cast v2, Landroid/location/Location;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_93
    iget-object v2, p0, Linq;->d:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_94
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    invoke-virtual {v0}, Lcom/google/googlex/gcam/InterleavedImageU8;->f()Lcom/google/googlex/gcam/InterleavedReadViewU8;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_96
    sget v3, Lcom/google/android/libraries/camera/exif/ExifInterface;->Z:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-virtual {v0}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->d()I

    move-result v2

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_98
    if-nez v1, :cond_c

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    iget-object v1, p0, Linq;->a:Lins;

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    sget-object v3, Lsxp;->b:Lsxp;

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    sget-object v2, Lins;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_9c
    invoke-virtual {v2}, Lpoh;->l()Lpog;

    move-result-object v2

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    const/4 v12, 0x0

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_9e
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_9f
    invoke-virtual {v1, v2}, Lnpr;->m(Lpog;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_a0
    iget-object v1, v1, Lins;->g:Lpic;

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    new-instance v1, Lpfv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_a2
    invoke-static {v3, v1, v2}, Lcom/google/googlex/gcam/imageproc/Resample;->a(IILsxp;)[I

    move-result-object v1

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    aget v1, v1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    move-object v3, v2

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_a5
    invoke-virtual {v2}, Lpoh;->l()Lpog;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_a6
    move-object v10, v6

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a7
    invoke-static {v1, v3}, Lsgj;->E(Lcom/google/googlex/gcam/ShotMetadata;I)V

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_a8
    iget-object v1, p0, Linq;->a:Lins;

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_a9
    invoke-direct {v6, v7}, Linn;-><init>(I)V

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_aa
    goto/16 :goto_4e

    nop

    :goto_ab
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    const/16 v5, 0x5a

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_ad
    invoke-static {v1}, Lsgj;->D(Lcom/google/googlex/gcam/ShotMetadata;)V

    :goto_ae
    goto/32 :goto_b8

    nop

    nop

    :goto_af
    iget-object v3, v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->bB:Lpfl;

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

    nop

    :goto_b0
    iget-wide v3, p0, Linq;->f:J

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    nop

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

    :goto_b2
    iget-object v2, v1, Lins;->d:Lkog;

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_b3
    move-object v10, v1

    nop

    :goto_b4
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    const/4 v4, 0x1

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-direct {v1, v2, v3}, Lpck;-><init>(II)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-virtual {v1, v11}, Lpic;->L(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    new-instance v1, Lcom/google/googlex/gcam/JpgEncodeOptions;

    nop

    nop

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

    :goto_b9
    const/4 v7, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {v3}, Lpfl;->e()V

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    invoke-virtual {v2, v6}, Lrss;->b(Lrsk;)Lrss;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop
.end method
