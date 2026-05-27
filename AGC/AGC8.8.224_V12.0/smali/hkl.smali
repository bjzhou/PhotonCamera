.class public final Lhkl;
.super Lhkh;


# direct methods
.method public constructor <init>(Lkrf;)V
    .locals 1

    invoke-static {}, Lhkk;->values()[Lhkk;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lhkh;-><init>(Lkrh;[Ljava/lang/Enum;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-super {p0}, Lhkh;->a()V

    return-void
.end method

.method public final c(Lhkk;Lhkk;)I
    .locals 2

    invoke-virtual {p0, p2}, Lhkh;->g(Ljava/lang/Enum;)J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lhkh;->g(Ljava/lang/Enum;)J

    move-result-wide p1

    sub-long/2addr v0, p1

    const-wide/32 p1, 0xf4240

    div-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method
