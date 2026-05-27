.class public final Llmc;
.super Lljz;

# interfaces
.implements Llha;
.implements Llil;


# static fields
.field public static final b:J


# instance fields
.field public final c:Landroid/app/Application;

.field public final d:Logd;

.field public final e:Lmap;

.field public final f:Lva;

.field private final g:Llhe;

.field private final h:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Llmc;->b:J

    return-void
.end method

.method public constructor <init>(Llij;Landroid/content/Context;Llhe;Ljava/util/concurrent/Executor;Logd;Lva;Loiw;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Lljz;-><init>()V

    invoke-virtual {p1, p4, p5, p7}, Llij;->b(Ljava/util/concurrent/Executor;Logd;Loiw;)Lmap;

    move-result-object p1

    iput-object p1, p0, Llmc;->e:Lmap;

    iput-object p4, p0, Llmc;->h:Ljava/util/concurrent/Executor;

    check-cast p2, Landroid/app/Application;

    iput-object p2, p0, Llmc;->c:Landroid/app/Application;

    iput-object p5, p0, Llmc;->d:Logd;

    iput-object p6, p0, Llmc;->f:Lva;

    iput-object p3, p0, Llmc;->g:Llhe;

    return-void
.end method


# virtual methods
.method public final ab()V
    .locals 1

    iget-object v0, p0, Llmc;->g:Llhe;

    invoke-virtual {v0, p0}, Llhe;->a(Llhd;)V

    return-void
.end method

.method public final d(Landroid/app/Activity;)V
    .locals 1

    iget-object p1, p0, Llmc;->g:Llhe;

    invoke-virtual {p1, p0}, Llhe;->b(Llhd;)V

    new-instance p1, Llmb;

    invoke-direct {p1, p0}, Llmb;-><init>(Llmc;)V

    iget-object v0, p0, Llmc;->h:Ljava/util/concurrent/Executor;

    invoke-static {p1, v0}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    return-void
.end method
