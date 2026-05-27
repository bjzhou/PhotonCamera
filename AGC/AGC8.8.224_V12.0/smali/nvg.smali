.class public abstract Lnvg;
.super Ljava/lang/Object;

# interfaces
.implements Lnyf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnwh;->a:Lnwh;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final e(Lnxy;)V
    .locals 0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lnxy;->cH()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lnve;->K()Lnyz;

    move-result-object p0

    invoke-virtual {p0}, Lnyz;->a()Lnxd;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/io/InputStream;Lnwh;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lnvy;->I(Ljava/io/InputStream;)Lnvy;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnvg;->d(Lnvy;Lnwh;)Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Lnvy;->z(I)V
    :try_end_0
    .catch Lnxd; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2}, Lnvg;->e(Lnxy;)V

    return-object p2

    :catch_0
    move-exception p1

    throw p1
.end method

.method public final bridge synthetic b([BILnwh;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lnvg;->c([BILnwh;)Lnxy;

    move-result-object p1

    invoke-static {p1}, Lnvg;->e(Lnxy;)V

    return-object p1
.end method

.method public c([BILnwh;)Lnxy;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
