.class final Lloc;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Llod;


# direct methods
.method public constructor <init>(Llod;)V
    .locals 0

    iput-object p1, p0, Lloc;->a:Llod;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p1, p0, Lloc;->a:Llod;

    invoke-virtual {p1}, Llod;->b()V

    return-void
.end method
