.class public final Lbvq;
.super Ljava/lang/Object;

# interfaces
.implements Lbuz;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lbuz;

.field private final c:Lbuz;

.field private final d:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbuz;Lbuz;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lbvq;->a:Landroid/content/Context;

    iput-object p2, p0, Lbvq;->b:Lbuz;

    iput-object p3, p0, Lbvq;->c:Lbuz;

    iput-object p4, p0, Lbvq;->d:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/net/Uri;

    invoke-static {p1}, Lbze;->y(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic b(Ljava/lang/Object;IILbqf;)Lva;
    .locals 11

    move-object v4, p1

    check-cast v4, Landroid/net/Uri;

    new-instance p1, Lva;

    new-instance v9, Lcah;

    invoke-direct {v9, v4}, Lcah;-><init>(Ljava/lang/Object;)V

    new-instance v10, Lbvp;

    iget-object v1, p0, Lbvq;->a:Landroid/content/Context;

    iget-object v2, p0, Lbvq;->b:Lbuz;

    iget-object v3, p0, Lbvq;->c:Lbuz;

    iget-object v8, p0, Lbvq;->d:Ljava/lang/Class;

    move-object v0, v10

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lbvp;-><init>(Landroid/content/Context;Lbuz;Lbuz;Landroid/net/Uri;IILbqf;Ljava/lang/Class;)V

    invoke-direct {p1, v9, v10}, Lva;-><init>(Lbqb;Lbqo;)V

    return-object p1
.end method
