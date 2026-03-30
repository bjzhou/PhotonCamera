.class public abstract Lmai;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public abstract a()I
    .annotation runtime Ltea;
        a = "hal_version"
    .end annotation
.end method

.method public abstract b()I
    .annotation runtime Ltea;
        a = "min_os_version"
    .end annotation
.end method

.method public abstract c()J
    .annotation runtime Ltea;
        a = "apex_size"
    .end annotation
.end method

.method public abstract d()Ljava/lang/String;
    .annotation runtime Ltea;
        a = "target_os_prefix"
    .end annotation
.end method
