.class public final synthetic Lfag;
.super Ljava/lang/Object;

# interfaces
.implements Lfaj;


# instance fields
.field public final synthetic a:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfag;->a:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a(Lfaz;)V
    .locals 3

    iget-object v0, p0, Lfag;->a:Landroid/os/Bundle;

    instance-of v1, p1, Lfaw;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v2, p1

    check-cast v2, Lfaw;

    invoke-interface {v2, v1}, Lfaw;->h(Landroid/os/Bundle;)V

    invoke-static {p1}, Lfak;->f(Lfaz;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
