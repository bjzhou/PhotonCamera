.class public final Llmh;
.super Llmg;

# interfaces
.implements Llil;


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x5

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "Warm startup activity onStart"

    aput-object v1, v7, v0

    const/4 v0, 0x1

    const-string v1, "Cold startup class loading"

    aput-object v1, v7, v0

    const/4 v0, 0x2

    const-string v1, "Cold startup from process creation"

    aput-object v1, v7, v0

    const/4 v0, 0x3

    const-string v1, "Cold startup interactive before onDraw from process creation"

    aput-object v1, v7, v0

    const/4 v0, 0x4

    const-string v1, "Cold startup interactive from process creation"

    aput-object v1, v7, v0

    const-string v1, "Cold startup"

    const-string v2, "Cold startup interactive"

    const-string v3, "Cold startup interactive before onDraw"

    const-string v4, "Warm startup"

    const-string v5, "Warm startup interactive"

    const-string v6, "Warm startup interactive before onDraw"

    invoke-static/range {v1 .. v7}, Lmwn;->M(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lmwn;

    return-void
.end method

.method public constructor <init>(Llij;Logd;Loiw;Llhz;[B)V
    .locals 0

    invoke-direct {p0}, Llmg;-><init>()V

    new-instance p5, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p5}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sget-object p5, Lnnv;->a:Lnnv;

    invoke-virtual {p1, p5, p2, p3}, Llij;->b(Ljava/util/concurrent/Executor;Logd;Loiw;)Lmap;

    new-instance p1, Ldkg;

    const/4 p3, 0x7

    const/4 p5, 0x0

    invoke-direct {p1, p4, p2, p3, p5}, Ldkg;-><init>(Llhz;Logd;I[B)V

    invoke-static {p1}, Llkj;->D(Lmrl;)Lmrl;

    return-void
.end method


# virtual methods
.method public final synthetic ab()V
    .locals 0

    return-void
.end method
