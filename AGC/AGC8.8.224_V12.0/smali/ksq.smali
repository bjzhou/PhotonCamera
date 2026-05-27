.class final Lksq;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lksr;


# direct methods
.method public constructor <init>(Lksr;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lksq;->a:Lksr;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p1, p0, Lksq;->a:Lksr;

    invoke-virtual {p1}, Lksr;->b()Z

    return-void
.end method
