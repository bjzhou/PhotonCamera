.class public final Lhar;
.super Ljwi;


# instance fields
.field private final a:Lmtc;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lgzn;)V
    .locals 8

    sget-object v0, Lgzd;->j:Lgzu;

    invoke-interface {p2, v0}, Lgzn;->b(Lgzb;)Ljwb;

    move-result-object p2

    invoke-direct {p0, p2}, Ljwi;-><init>(Ljwb;)V

    sget-object v0, Lhaq;->a:Lhaq;

    const p2, 0x7f14043e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lhaq;->b:Lhaq;

    const p2, 0x7f140440

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lhaq;->c:Lhaq;

    const p2, 0x7f14043f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lhaq;->d:Lhaq;

    const p2, 0x7f14043d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lmvk;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmvk;

    move-result-object p1

    iput-object p1, p0, Lhar;->a:Lmtc;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lhar;->a:Lmtc;

    check-cast v0, Lmyt;

    iget-object v0, v0, Lmyt;->c:Lmyt;

    invoke-interface {v0, p1}, Lmtc;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhaq;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lhaq;->a:Lhaq;

    return-object p1
.end method

.method protected final bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lhaq;

    iget-object v0, p0, Lhar;->a:Lmtc;

    invoke-interface {v0, p1}, Lmtc;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Llkj;->C(Ljava/lang/Object;)V

    return-object p1
.end method
