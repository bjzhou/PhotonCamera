.class public final Lfnk;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# static fields
.field public static final a:Lcjv;


# instance fields
.field public final b:Ljvs;

.field public final c:Lfnr;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public e:Lken;

.field public f:Lkfj;

.field public g:Liha;

.field public h:Lkef;

.field public i:Ljuf;

.field public final j:Lkha;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcjp;

    invoke-direct {v0}, Lcjp;-><init>()V

    sput-object v0, Lfnk;->a:Lcjv;

    return-void
.end method

.method public constructor <init>(Lkha;Ljvs;Lfnr;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lfnk;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lfnk;->j:Lkha;

    iput-object p2, p0, Lfnk;->b:Ljvs;

    iput-object p3, p0, Lfnk;->c:Lfnr;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    invoke-static {}, Ljuh;->a()V

    iget-object v0, p0, Lfnk;->i:Ljuf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljuf;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lfnk;->e:Lken;

    iput-object v0, p0, Lfnk;->h:Lkef;

    return-void
.end method
