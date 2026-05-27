.class public final Llqp;
.super Llqt;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.apps.photos"

    iput-object v0, p0, Llqp;->a:Ljava/lang/String;

    invoke-direct {p0}, Llqt;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lloi;Z)I
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p2, Lloi;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    if-eqz p3, :cond_2

    return v1

    :cond_2
    iget-object p1, p0, Llqp;->a:Ljava/lang/String;

    iget-object p2, p2, Lloi;->c:Ljava/lang/Object;

    check-cast p2, Landroid/content/pm/ProviderInfo;

    iget-object p2, p2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x3

    return p1
.end method
