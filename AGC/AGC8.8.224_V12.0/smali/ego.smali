.class public final synthetic Lego;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lnph;

.field public final synthetic b:Loiw;


# direct methods
.method public synthetic constructor <init>(Lnph;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lego;->a:Lnph;

    iput-object p2, p0, Lego;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lego;->a:Lnph;

    iget-object v1, p0, Lego;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljvs;

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method
