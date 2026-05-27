.class public final Ljns;
.super Ljde;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljpw;

    invoke-direct {v0}, Ljpw;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljpw;->b(Ljava/lang/Object;)Ljot;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 8

    sget-object v2, Ljnp;->a:Ligo;

    sget-object v3, Ljcy;->r:Ljcx;

    sget-object v4, Ljdd;->a:Ljdd;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Ljde;-><init>(Landroid/content/Context;Ligo;Ljcy;Ljdd;[B[B[B)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljot;
    .locals 3

    invoke-static {}, Ljfm;->a()Ljfl;

    move-result-object v0

    new-instance v1, Ljhs;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Ljhs;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Ljfl;->a:Ljfh;

    invoke-virtual {v0}, Ljfl;->a()Ljfm;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljde;->e(Ljfm;)Ljot;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljot;
    .locals 3

    invoke-static {}, Ljfm;->a()Ljfl;

    move-result-object v0

    new-instance v1, Ljnr;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Ljnr;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, v0, Ljfl;->a:Ljfh;

    invoke-virtual {v0}, Ljfl;->a()Ljfm;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljde;->e(Ljfm;)Ljot;

    move-result-object p1

    return-object p1
.end method
