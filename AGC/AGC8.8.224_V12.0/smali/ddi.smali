.class public final synthetic Lddi;
.super Ljava/lang/Object;

# interfaces
.implements Lhdw;


# instance fields
.field public final synthetic a:Lddj;


# direct methods
.method public synthetic constructor <init>(Lddj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lddi;->a:Lddj;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Lddi;->a:Lddj;

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lddj;->d()V

    return-void

    :cond_0
    iget-object v1, v0, Lddj;->c:Ljava/util/concurrent/Executor;

    new-instance v2, Lcue;

    const/16 v3, 0xb

    invoke-direct {v2, v0, p1, v3}, Lcue;-><init>(Lddj;Landroid/graphics/Bitmap;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
