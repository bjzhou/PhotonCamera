.class public final Loxw;
.super Ljava/lang/Object;


# static fields
.field public static final a:I

.field public static final b:Loxb;

.field public static final c:Loxb;

.field public static final d:Loxb;

.field public static final e:Loxb;

.field public static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "kotlinx.coroutines.semaphore.maxSpinCycles"

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v2, v3}, Lljz;->E(Ljava/lang/String;IIII)I

    move-result v0

    sput v0, Loxw;->a:I

    new-instance v0, Loxb;

    const-string v1, "PERMIT"

    invoke-direct {v0, v1}, Loxb;-><init>(Ljava/lang/String;)V

    sput-object v0, Loxw;->b:Loxb;

    new-instance v0, Loxb;

    const-string v1, "TAKEN"

    invoke-direct {v0, v1}, Loxb;-><init>(Ljava/lang/String;)V

    sput-object v0, Loxw;->c:Loxb;

    new-instance v0, Loxb;

    const-string v1, "BROKEN"

    invoke-direct {v0, v1}, Loxb;-><init>(Ljava/lang/String;)V

    sput-object v0, Loxw;->d:Loxb;

    new-instance v0, Loxb;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1}, Loxb;-><init>(Ljava/lang/String;)V

    sput-object v0, Loxw;->e:Loxb;

    const-string v0, "kotlinx.coroutines.semaphore.segmentSize"

    const/16 v1, 0x10

    invoke-static {v0, v1, v2, v2, v3}, Lljz;->E(Ljava/lang/String;IIII)I

    move-result v0

    sput v0, Loxw;->f:I

    return-void
.end method

.method public static final a(JLowe;)Lowe;
    .locals 2

    new-instance v0, Lowe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lowe;-><init>(JLowe;I)V

    return-object v0
.end method
