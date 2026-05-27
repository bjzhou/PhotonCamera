.class public final Lvx;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v1, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v2

    invoke-static {v1}, Lljr;->at([Ljava/lang/Object;)Ljava/util/List;

    new-array v1, v2, [Ljava/lang/Integer;

    aput-object v3, v1, v4

    aput-object v8, v1, v7

    invoke-static {v1}, Lljr;->at([Ljava/lang/Object;)Ljava/util/List;

    new-array v1, v5, [Ljava/lang/Integer;

    aput-object v3, v1, v4

    const/4 v9, 0x6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v1, v7

    aput-object v6, v1, v2

    const/4 v10, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v1, v0

    invoke-static {v1}, Lljr;->at([Ljava/lang/Object;)Ljava/util/List;

    invoke-static {v8}, Lljr;->ac(Ljava/lang/Object;)Ljava/util/List;

    invoke-static {v8}, Lljr;->ac(Ljava/lang/Object;)Ljava/util/List;

    new-array v1, v2, [Ljava/lang/Integer;

    aput-object v6, v1, v4

    aput-object v11, v1, v7

    invoke-static {v1}, Lljr;->at([Ljava/lang/Object;)Ljava/util/List;

    new-array v1, v0, [Ljava/lang/Integer;

    aput-object v3, v1, v4

    aput-object v6, v1, v7

    aput-object v8, v1, v2

    invoke-static {v1}, Lljr;->at([Ljava/lang/Object;)Ljava/util/List;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v1, v11}, Lljr;->aM(Ljava/lang/Object;Ljava/lang/Object;)Lojd;

    move-result-object v1

    invoke-static {v1}, Lljr;->W(Lojd;)Ljava/util/Map;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1, v3}, Lljr;->aM(Ljava/lang/Object;Ljava/lang/Object;)Lojd;

    move-result-object v1

    invoke-static {v1}, Lljr;->W(Lojd;)Ljava/util/Map;

    new-array v1, v2, [Lojd;

    sget-object v12, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v12, v11}, Lljr;->aM(Ljava/lang/Object;Ljava/lang/Object;)Lojd;

    move-result-object v12

    aput-object v12, v1, v4

    sget-object v12, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v12, v11}, Lljr;->aM(Ljava/lang/Object;Ljava/lang/Object;)Lojd;

    move-result-object v12

    aput-object v12, v1, v7

    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lljr;->V(I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/LinkedHashMap;-><init>(I)V

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v2, :cond_0

    aget-object v14, v1, v13

    iget-object v15, v14, Lojd;->a:Ljava/lang/Object;

    iget-object v14, v14, Lojd;->b:Ljava/lang/Object;

    invoke-interface {v12, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v5, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v1, v4

    aput-object v11, v1, v7

    aput-object v3, v1, v2

    aput-object v6, v1, v0

    invoke-static {v1}, Lljr;->at([Ljava/lang/Object;)Ljava/util/List;

    new-array v1, v10, [Ljava/lang/Integer;

    aput-object v12, v1, v4

    aput-object v8, v1, v7

    aput-object v11, v1, v2

    aput-object v3, v1, v0

    aput-object v9, v1, v5

    invoke-static {v1}, Lljr;->at([Ljava/lang/Object;)Ljava/util/List;

    new-array v0, v0, [Ljava/lang/Integer;

    aput-object v12, v0, v4

    aput-object v11, v0, v7

    aput-object v3, v0, v2

    invoke-static {v0}, Lljr;->at([Ljava/lang/Object;)Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
