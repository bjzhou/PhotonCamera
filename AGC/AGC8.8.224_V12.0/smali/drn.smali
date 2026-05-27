.class public final Ldrn;
.super Ljava/lang/Object;

# interfaces
.implements Ldsg;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Lmqp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/faceobfuscation/FaceRegionOfInterestSelectorFrequentFacesImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldrn;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lmqp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldrn;->b:Lmqp;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lmqp;)Ljava/util/List;
    .locals 8

    iget-object v0, p0, Ldrn;->b:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p2, Ldrn;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    const-string v0, "Frequent faces buffer isn\'t present."

    const/16 v1, 0x45c

    invoke-static {p2, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    const/4 p2, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldxz;

    check-cast p2, Lmqt;

    iget-object p2, p2, Lmqt;->a:Ljava/lang/Object;

    check-cast p2, Lj$/time/Instant;

    sget v1, Lnmg;->a:I

    invoke-virtual {p2}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v1

    const-wide v3, -0x225c17d04L

    const-wide/32 v5, 0x3b9aca00

    cmp-long v7, v1, v3

    if-gez v7, :cond_1

    invoke-virtual {p2}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-static {v1, v2, v5, v6}, Lnsy;->ad(JJ)J

    move-result-wide v1

    invoke-virtual {p2}, Lj$/time/Instant;->getNano()I

    move-result p2

    const v3, -0x3b9aca00

    add-int/2addr p2, v3

    int-to-long v3, p2

    invoke-static {v1, v2, v3, v4}, Lnsy;->ac(JJ)J

    move-result-wide v1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v1

    invoke-static {v1, v2, v5, v6}, Lnsy;->ad(JJ)J

    move-result-wide v1

    invoke-virtual {p2}, Lj$/time/Instant;->getNano()I

    move-result p2

    int-to-long v3, p2

    invoke-static {v1, v2, v3, v4}, Lnsy;->ac(JJ)J

    move-result-wide v1

    :goto_0
    invoke-interface {v0, v1, v2}, Ldxz;->b(J)Ljyp;

    move-result-object p2

    :goto_1
    if-nez p2, :cond_2

    invoke-static {p1}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p2, p2, Ljyp;->b:Ljava/lang/Object;

    invoke-static {p2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcdm;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcdm;-><init>(I)V

    invoke-interface {p2, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p2

    sget-object v0, Lcpy;->p:Lcpy;

    invoke-interface {p2, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p2

    sget-object v0, Lmtf;->b:Lj$/util/stream/Collector;

    invoke-interface {p2, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmwn;

    invoke-static {p1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Ldaa;

    const/4 v1, 0x7

    invoke-direct {v0, p2, v1}, Ldaa;-><init>(Lmwn;I)V

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lmtf;->a:Lj$/util/stream/Collector;

    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method
