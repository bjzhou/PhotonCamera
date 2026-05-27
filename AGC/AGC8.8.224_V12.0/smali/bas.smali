.class public final Lbas;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lbat;


# direct methods
.method public constructor <init>(Lbat;)V
    .locals 0

    iput-object p1, p0, Lbas;->a:Lbat;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lbas;->a:Lbat;

    invoke-virtual {p1, p2}, Lbat;->c(Landroid/content/Intent;)V

    return-void
.end method
