.class public final Legy;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Legy;->a:Loiw;

    iput-object p2, p0, Legy;->b:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;)Legy;
    .locals 1

    new-instance v0, Legy;

    invoke-direct {v0, p0, p1}, Legy;-><init>(Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/Long;
    .locals 5

    iget-object v0, p0, Legy;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lebi;

    iget-object v1, p0, Legy;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    sget-object v2, Ldhq;->X:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-wide v1, Legx;->b:J

    goto :goto_0

    :cond_0
    sget-wide v1, Legx;->a:J

    :goto_0
    iget v0, v0, Lebi;->b:I

    int-to-long v3, v0

    mul-long v1, v1, v3

    const/16 v0, 0x1f4

    invoke-static {v0}, Linb;->s(I)J

    move-result-wide v3

    add-long/2addr v1, v3

    const-wide/32 v3, 0x3b9aca00

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Legy;->b()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
