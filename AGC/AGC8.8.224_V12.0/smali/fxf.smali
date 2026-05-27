.class public final Lfxf;
.super Ljava/lang/Object;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lbkb;Lduv;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfxf;->a:Ljava/lang/Object;

    iput-object p2, p0, Lfxf;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Leea;Lnrr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfxf;->b:Ljava/lang/Object;

    iput-object p2, p0, Lfxf;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Leys;Lhec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfxf;->b:Ljava/lang/Object;

    iput-object p2, p0, Lfxf;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lfng;Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;)V
    .locals 0

    iput-object p1, p0, Lfxf;->a:Ljava/lang/Object;

    iput-object p2, p0, Lfxf;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lfxg;Lfyy;)V
    .locals 0

    iput-object p1, p0, Lfxf;->b:Ljava/lang/Object;

    iput-object p2, p0, Lfxf;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lhza;)V
    .locals 4

    iget-object v0, p0, Lfxf;->b:Ljava/lang/Object;

    iget-object v1, p0, Lfxf;->a:Ljava/lang/Object;

    check-cast v0, Leys;

    iget-object v2, v0, Leys;->d:Ljava/util/concurrent/Executor;

    new-instance v3, Leyl;

    invoke-direct {v3, v0, p1, v1}, Leyl;-><init>(Leys;Lhza;Lhec;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
