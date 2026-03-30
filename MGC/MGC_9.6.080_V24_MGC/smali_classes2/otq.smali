.class public final Lotq;
.super Lojo;
.source "PG"


# instance fields
.field private final d:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Lojo;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lotq;->d:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 6

    goto/32 :goto_41

    nop

    nop

    :goto_0
    goto/16 :goto_15

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int/2addr v5, v2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    :goto_4
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_7
    const-string v3, "path"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    :goto_9
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lt v2, v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

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

    :goto_e
    iget v3, p0, Lotq;->d:I

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

    :goto_f
    iget v5, p0, Lotq;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    const-string v3, "DataItemRef{ "

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

    nop

    :goto_11
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

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

    :goto_12
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_13
    iget-object v0, v0, Lcom/google/android/gms/common/data/DataHolder;->c:Landroid/os/Bundle;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    :goto_15
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;I)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_33

    nop

    nop

    :goto_18
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v2, v1, v0}, Landroid/database/CursorWindow;->getBlob(II)[B

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_1a
    iget v2, p0, Lojo;->c:I

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v3, "uri="

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1c
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v2, 0x0

    nop

    nop

    :goto_1f
    goto/32 :goto_e

    nop

    nop

    :goto_20
    invoke-direct {v4, v3, v5}, Lojo;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget v2, p0, Lotq;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_24
    array-length p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_25
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_33

    nop

    :cond_2
    goto/32 :goto_32

    nop

    :goto_27
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_28
    const-string p0, " }"

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_29
    goto :goto_1f

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2b
    add-int v0, v0, v1

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

    :goto_2c
    iget v1, p0, Lojo;->b:I

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2d
    new-instance v4, Lojo;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0, v3}, Lojo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2f
    aget-object v2, v4, v2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_3
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_9

    nop

    nop

    :goto_33
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const-string v1, ", numAssets="

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_35
    iget-object v0, p0, Lojo;->a:Lcom/google/android/gms/common/data/DataHolder;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_36
    const-string v3, "data"

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

    nop

    :goto_37
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v4, v0, Lcom/google/android/gms/common/data/DataHolder;->d:[Landroid/database/CursorWindow;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v4}, Lojo;->c()Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

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

    :goto_3b
    iget-object v3, p0, Lotq;->a:Lcom/google/android/gms/common/data/DataHolder;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3d
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    new-instance v1, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_3f
    const v1, 0x17

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const-string p0, "null"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_41
    const v0, 0x2

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const-string v0, ", dataSz="

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_43
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v4}, Lojo;->c()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_47
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_22

    nop

    nop
.end method
