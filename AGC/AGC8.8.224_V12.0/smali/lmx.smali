.class public final Llmx;
.super Ljava/lang/Object;


# static fields
.field private static final f:Lkrn;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Loiw;

.field public final c:Lkrn;

.field public d:I

.field public e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkrq;

    invoke-direct {v0}, Lkrq;-><init>()V

    sput-object v0, Llmx;->f:Lkrn;

    return-void
.end method

.method public constructor <init>(Loiw;Lkrn;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Llmx;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Llmx;->d:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llmx;->e:J

    iput-object p1, p0, Llmx;->b:Loiw;

    iput-object p2, p0, Llmx;->c:Lkrn;

    return-void
.end method

.method public static a(I)Llmx;
    .locals 2

    new-instance v0, Llmw;

    invoke-direct {v0, p0}, Llmw;-><init>(I)V

    new-instance p0, Llmx;

    sget-object v1, Llmx;->f:Lkrn;

    invoke-direct {p0, v0, v1}, Llmx;-><init>(Loiw;Lkrn;)V

    return-object p0
.end method
