.class public final Ljga;
.super Ljft;


# instance fields
.field final synthetic g:Ljgb;


# direct methods
.method public constructor <init>(Ljgb;I)V
    .locals 1

    iput-object p1, p0, Ljga;->g:Ljgb;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljft;-><init>(Ljgb;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljby;)V
    .locals 1

    iget-object v0, p0, Ljga;->g:Ljgb;

    iget-object v0, v0, Ljgb;->g:Ljfw;

    invoke-interface {v0, p1}, Ljfw;->a(Ljby;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method protected final c()Z
    .locals 2

    iget-object v0, p0, Ljga;->g:Ljgb;

    iget-object v0, v0, Ljgb;->g:Ljfw;

    sget-object v1, Ljby;->a:Ljby;

    invoke-interface {v0, v1}, Ljfw;->a(Ljby;)V

    const/4 v0, 0x1

    return v0
.end method
