.class public final Ljgj;
.super Ljgk;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Ljex;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljex;)V
    .locals 0

    iput-object p1, p0, Ljgj;->a:Landroid/content/Intent;

    iput-object p2, p0, Ljgj;->b:Ljex;

    invoke-direct {p0}, Ljgk;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Ljgj;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljgj;->b:Ljex;

    const/4 v2, 0x2

    invoke-interface {v1, v0, v2}, Ljex;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
