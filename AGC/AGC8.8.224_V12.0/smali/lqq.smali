.class final Llqq;
.super Llqt;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Llqt;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lloi;Z)I
    .locals 0

    iget-object p2, p2, Lloi;->b:Ljava/lang/Object;

    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x40

    invoke-virtual {p2, p3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    if-ltz p2, :cond_0

    const-string p2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {p1, p2}, Laae;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const/4 p1, 0x3

    return p1
.end method
