.class final Lgun;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lguq;


# direct methods
.method public constructor <init>(Lguq;)V
    .locals 0

    iput-object p1, p0, Lgun;->a:Lguq;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lgun;->a:Lguq;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lguq;->c:Z

    return-void
.end method
