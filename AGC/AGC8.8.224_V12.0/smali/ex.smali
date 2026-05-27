.class final Lex;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Ley;


# direct methods
.method public constructor <init>(Ley;)V
    .locals 0

    iput-object p1, p0, Lex;->a:Ley;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lex;->a:Ley;

    invoke-virtual {p1}, Ley;->b()V

    return-void
.end method
