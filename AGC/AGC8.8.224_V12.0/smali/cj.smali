.class final Lcj;
.super Lcd;


# instance fields
.field final synthetic b:Lcq;


# direct methods
.method public constructor <init>(Lcq;)V
    .locals 0

    iput-object p1, p0, Lcj;->b:Lcq;

    invoke-direct {p0}, Lcd;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lbw;
    .locals 2

    iget-object v0, p0, Lcj;->b:Lcq;

    iget-object v0, v0, Lcq;->i:Lce;

    iget-object v0, v0, Lce;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lbw;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lbw;

    move-result-object p1

    return-object p1
.end method
