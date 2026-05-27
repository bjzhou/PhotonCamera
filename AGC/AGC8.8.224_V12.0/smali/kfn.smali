.class public final synthetic Lkfn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkfp;

.field public final synthetic b:J

.field public final synthetic c:I

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lkfp;JIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkfn;->a:Lkfp;

    iput-wide p2, p0, Lkfn;->b:J

    iput p4, p0, Lkfn;->c:I

    iput-wide p5, p0, Lkfn;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lkfn;->a:Lkfp;

    iget-wide v2, p0, Lkfn;->b:J

    iget v4, p0, Lkfn;->c:I

    iget-wide v5, p0, Lkfn;->d:J

    iget-object v1, v0, Lkfp;->a:Lkfg;

    invoke-virtual/range {v1 .. v6}, Lkfg;->bt(JIJ)V

    return-void
.end method
