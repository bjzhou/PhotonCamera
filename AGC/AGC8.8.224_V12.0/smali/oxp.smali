.class public abstract Loxp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public g:J

.field public h:Loxq;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-wide v0, Loxs;->a:J

    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(JLoxq;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Loxp;->g:J

    iput-object p3, p0, Loxp;->h:Loxq;

    return-void
.end method
