.class public Lwireless/android/learning/acmi/p11/metadata/P11MetadataSerializer;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lutz;


# static fields
.field private static final e:Lryh;


# instance fields
.field public final a:Lcom/google/googlex/gcam/StaticMetadataVector;

.field public final b:Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;

.field public final c:Lpnu;

.field public final d:Lpnv;

.field private final f:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v3, v2}, Lsbt;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_2
    const-string v1, "p11metaserializer"

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

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1, v3}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, v1}, Lpco;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    :goto_7
    new-instance v0, Lryd;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    sput-object v0, Lwireless/android/learning/acmi/p11/metadata/P11MetadataSerializer;->e:Lryh;

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

    :goto_e
    const v0, 0x9

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-class v0, Lwireless/android/learning/acmi/p11/metadata/P11MetadataSerializer;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    sget-object v1, Lsyi;->b:Lsyi;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v3, Lsbt;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0}, Lryd;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v2, Lsyi;->f:Lsyi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Lryd;->b()Lryh;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpnv;Lpnx;Landroid/content/pm/PackageInfo;)V
    .locals 12

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-array v8, v4, [I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v7}, Lcom/google/googlex/gcam/StaticMetadataVector;->c(Lcom/google/googlex/gcam/StaticMetadata;)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lcom/google/googlex/gcam/StaticMetadataVector;

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

    :goto_3
    aget-object v5, v2, v3

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_4
    check-cast v9, Lsyi;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object p0, Lhmu;->a:Lhmo;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    const/4 v1, 0x2

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

    nop

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_8
    move v3, v4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p3, p0, Lwireless/android/learning/acmi/p11/metadata/P11MetadataSerializer;->b:Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0}, Lcom/google/googlex/gcam/StaticMetadataVector;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p3, Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-array v2, v1, [Lpog;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int/lit8 v9, v9, 0x1

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v10}, Lcom/google/googlex/gcam/StaticMetadataVector;->c(Lcom/google/googlex/gcam/StaticMetadata;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    nop

    :goto_14
    goto/32 :goto_20

    nop

    nop

    :goto_15
    iput-object v0, p0, Lwireless/android/learning/acmi/p11/metadata/P11MetadataSerializer;->f:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_16
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_17
    aget v10, v7, v9

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_19
    invoke-interface {p1, v6}, Lpnv;->a(Lpnx;)Lpnu;

    move-result-object v6

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1a
    sget-object v10, Lsbn;->a:Lsbn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    :goto_1c
    goto/32 :goto_5f

    nop

    nop

    :goto_1d
    if-eq v10, v11, :cond_0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    array-length v8, v7

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_1f
    aput-object v3, v2, v4

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2b

    nop

    :goto_22
    if-lt v9, v8, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_37

    nop

    nop

    :goto_25
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_26
    sget-object v3, Lpog;->b:Lpog;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_27
    invoke-virtual {v7}, Lcom/google/googlex/gcam/StaticMetadata;->g()Lsyi;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-lt v3, v1, :cond_3

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_29
    invoke-direct {v10, v7}, Lcom/google/googlex/gcam/StaticMetadata;-><init>(Lcom/google/googlex/gcam/StaticMetadata;)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast v6, Lpnt;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_d

    nop

    nop

    :goto_2c
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_2d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    sget-object v5, Lpog;->a:Lpog;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v7, v6, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface {p1, v7}, Lpnv;->a(Lpnx;)Lpnu;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_31
    add-int/lit8 v3, v3, 0x1

    nop

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

    :goto_32
    check-cast v6, Lpnx;

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_33
    if-nez v9, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_4
    goto/32 :goto_5d

    nop

    nop

    :goto_34
    if-nez v7, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iput-object p1, p0, Lwireless/android/learning/acmi/p11/metadata/P11MetadataSerializer;->d:Lpnv;

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

    :goto_36
    invoke-virtual {v8}, Lryy;->em()Lscp;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_38
    new-instance v10, Lcom/google/googlex/gcam/StaticMetadata;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_39
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-direct {p3, p2, p1}, Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;-><init>(Lpnu;Lpnv;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    aput-object v5, v2, v3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    move v9, v4

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iput-object v0, p0, Lwireless/android/learning/acmi/p11/metadata/P11MetadataSerializer;->a:Lcom/google/googlex/gcam/StaticMetadataVector;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_41
    const/4 v11, 0x3

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_42
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_44
    invoke-interface {p1, v5}, Lpnv;->h(Lpog;)Ljava/util/List;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v7, v8}, Lcom/google/googlex/gcam/StaticMetadata;->o(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v8, p3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

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

    :goto_47
    invoke-virtual {v10, v9}, Lcom/google/googlex/gcam/StaticMetadata;->r(Lsyi;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v8, v9, v10}, Lryh;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_49
    iget-object v6, v6, Lpnt;->b:Lryy;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v7, v8}, Lcom/google/googlex/gcam/StaticMetadata;->n(Ljava/lang/String;)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-interface {p1, p2}, Lpnv;->a(Lpnx;)Lpnu;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_4c
    check-cast v8, Lryy;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v8, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iput-object p2, p0, Lwireless/android/learning/acmi/p11/metadata/P11MetadataSerializer;->c:Lpnu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_51
    check-cast v7, Lpnx;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_52
    invoke-interface {v6, v7, v8}, Lpnu;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_53
    if-nez v6, :cond_6

    nop

    goto/32 :goto_57

    nop

    nop

    :cond_6
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_55
    const/4 v3, 0x1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_56
    goto/16 :goto_3f

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_58
    check-cast v7, [I

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    if-nez v7, :cond_7

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

    :cond_7
    goto/32 :goto_42

    nop

    nop

    :goto_5a
    invoke-static {v7}, Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;->x(Lpnu;)Lcom/google/googlex/gcam/StaticMetadata;

    move-result-object v7

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_5b
    new-instance v0, Ljava/util/HashMap;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    if-nez v6, :cond_8

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

    :cond_8
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_5d
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    sget-object v8, Lwireless/android/learning/acmi/p11/metadata/P11MetadataSerializer;->e:Lryh;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop
.end method

.method public static native nativeSerializeGlobalMetadata(IIIIZ[B[FJLjava/nio/ByteBuffer;)I
.end method

.method public static native nativeSerializeImageMetadata(JFIIIII[F[F[FIIIIFF[FI[F[FF[F[F[I[[J[[F[[FFFJJLjava/nio/ByteBuffer;)I
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lsyi;
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

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

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p1

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_a
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    monitor-enter p0

    nop

    :try_start_1
    new-instance v0, Lsjb;

    nop

    nop

    const/16 v1, 0xa

    nop

    nop

    nop

    invoke-direct {v0, p0, v1}, Lsjb;-><init>(Ljava/lang/Object;I)V

    iget-object v1, p0, Lwireless/android/learning/acmi/p11/metadata/P11MetadataSerializer;->f:Ljava/util/Map;

    nop

    invoke-static {v1, p1, v0}, Lj$/util/Map$-EL;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    nop

    check-cast p1, Lsyi;

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method
