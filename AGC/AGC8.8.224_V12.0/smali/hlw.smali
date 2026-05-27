.class public final Lhlw;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lkbc;

.field public final c:Lkoe;

.field public final d:Ldhi;

.field public final e:Lhlc;

.field private final f:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/storage/spacechecker/StorageSpaceCheckerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhlw;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lhlc;Ljava/util/concurrent/Executor;Lkbc;Lkoe;Ldhi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhlw;->e:Lhlc;

    iput-object p2, p0, Lhlw;->f:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lhlw;->b:Lkbc;

    iput-object p4, p0, Lhlw;->c:Lkoe;

    iput-object p5, p0, Lhlw;->d:Ldhi;

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 1

    iget-object v0, p0, Lhlw;->f:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0}, Lhlw;->b(Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/util/concurrent/Executor;)Lnou;
    .locals 2

    new-instance v0, Lbdj;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lbdj;-><init>(Lhlw;I)V

    invoke-static {v0, p1}, Lnsy;->F(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    return-object p1
.end method
