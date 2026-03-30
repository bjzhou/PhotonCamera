.class public final Lotp;
.super Lolk;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Landroid/net/Uri;

.field public b:[B

.field private final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x13

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    new-instance v0, Lond;

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

    :goto_3
    goto/32 :goto_5

    nop

    :goto_4
    goto/32 :goto_a

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_7
    const v0, 0x20

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, v1}, Lond;-><init>(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sput-object v0, Lotp;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/os/Bundle;[B)V
    .locals 3

    goto/32 :goto_14

    nop

    nop

    :goto_0
    check-cast v1, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1a

    nop

    nop

    :goto_5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v2}, Lolx;->ag(Ljava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_c
    const-class v0, Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v2, Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;

    nop

    nop

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

    :goto_e
    iput-object p1, p0, Lotp;->a:Landroid/net/Uri;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_10
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_12
    invoke-direct {p0}, Lolk;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance p1, Ljava/util/HashMap;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14
    const v0, 0x1a

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

    :goto_15
    goto/32 :goto_b

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object p3, p0, Lotp;->b:[B

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_19
    invoke-static {v0}, Lolx;->ag(Ljava/lang/Object;)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

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

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1e
    iput-object p1, p0, Lotp;->c:Ljava/util/Map;

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

    :goto_1f
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_20
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_0
    const-string p0, "]"

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lotp;->a:Landroid/net/Uri;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

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

    nop

    :goto_7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v1, :cond_0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_c
    const-string v1, "null"

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Lotp;->c:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_13
    const-string v1, ", uri="

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

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    :goto_15
    return-object p0

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v1, p0, Lotp;->b:[B

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_19
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1a
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_20
    const-string v1, "DataItemParcelable[@"

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_21
    array-length v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const-string v3, ", numAssets="

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_27
    const v0, 0xe

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_29
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const-string v2, ",dataSz="

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_23

    nop

    nop
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    goto/32 :goto_18

    nop

    nop

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
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    new-instance p2, Landroid/os/Bundle;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3
    invoke-static {p1, v1}, Lolx;->i(Landroid/os/Parcel;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v3, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

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

    nop

    :goto_6
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_1
    goto/32 :goto_19

    nop

    :goto_9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    goto/32 :goto_26

    nop

    nop

    :goto_b
    const-class v0, Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;

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

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_d
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    check-cast v2, Losf;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lotp;->a:Landroid/net/Uri;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x4

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v0}, Lolx;->ag(Ljava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_15
    check-cast v2, Ljava/util/Map$Entry;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lotp;->b:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p1, v2, v0, p2}, Lolx;->u(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x1f

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1b
    invoke-static {p1}, Lolx;->g(Landroid/os/Parcel;)I

    move-result v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_e

    nop

    nop

    :goto_1f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_21
    invoke-static {p1, p2, p0}, Lolx;->p(Landroid/os/Parcel;I[B)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_23
    invoke-static {p1, v0, p2}, Lolx;->o(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_24
    invoke-direct {v4, v2}, Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;-><init>(Losf;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_25
    new-instance v4, Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_26
    iget-object v0, p0, Lotp;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 p2, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop
.end method
