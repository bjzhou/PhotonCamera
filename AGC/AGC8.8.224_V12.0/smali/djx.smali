.class public final Ldjx;
.super Lkal;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkal;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lkam;
    .locals 1

    new-instance v0, Lkam;

    invoke-direct {v0, p1, p0}, Lkam;-><init>(Ljava/lang/String;Lkal;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;I)Z
    .locals 4

    sget v0, Ldjy;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-le v0, p2, :cond_0

    goto :goto_1

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    invoke-static {p1, v0}, Ldjy;->a(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_1

    :cond_2
    const-string v0, "userdebug"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p1, p2}, Ldjy;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method
