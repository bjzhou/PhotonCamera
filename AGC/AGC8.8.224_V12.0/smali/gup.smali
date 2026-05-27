.class final Lgup;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lguq;


# direct methods
.method public constructor <init>(Lguq;)V
    .locals 0

    iput-object p1, p0, Lgup;->a:Lguq;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lgup;->a:Lguq;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Received UserPresent broadcast: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lguq;->c(Ljava/lang/String;)V

    return-void
.end method
