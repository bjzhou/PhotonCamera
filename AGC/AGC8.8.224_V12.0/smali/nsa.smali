.class public final Lnsa;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Z

.field public c:Z

.field public d:Z

.field public final e:Ljava/lang/Runnable;

.field public final f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lkpb;Landroid/hardware/HardwareBuffer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnsa;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnsa;->b:Z

    iput-boolean v0, p0, Lnsa;->c:Z

    iput-boolean v0, p0, Lnsa;->d:Z

    new-instance v0, Llkq;

    const/16 v1, 0x9

    invoke-direct {v0, p0, p1, v1}, Llkq;-><init>(Lnsa;Lkpb;I)V

    iput-object v0, p0, Lnsa;->e:Ljava/lang/Runnable;

    new-instance v0, Lkgc;

    const/16 v1, 0xa

    invoke-direct {v0, p0, p1, p2, v1}, Lkgc;-><init>(Lnsa;Lkpb;Landroid/hardware/HardwareBuffer;I)V

    iput-object v0, p0, Lnsa;->f:Ljava/lang/Runnable;

    return-void
.end method
