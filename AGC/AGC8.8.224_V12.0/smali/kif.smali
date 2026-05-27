.class public final synthetic Lkif;
.super Ljava/lang/Object;

# interfaces
.implements Lkai;


# instance fields
.field public final synthetic a:Lnph;


# direct methods
.method public synthetic constructor <init>(Lnph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkif;->a:Lnph;

    return-void
.end method


# virtual methods
.method public final bn(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lkif;->a:Lnph;

    check-cast p1, Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    invoke-virtual {v0, p1}, Lnph;->e(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
