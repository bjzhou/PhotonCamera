.class public final synthetic Lcsj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcsk;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcsk;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcsj;->a:Lcsk;

    iput p2, p0, Lcsj;->b:I

    iput p3, p0, Lcsj;->c:I

    iput-boolean p4, p0, Lcsj;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcsj;->a:Lcsk;

    iget v1, p0, Lcsj;->b:I

    iget v2, p0, Lcsj;->c:I

    iget-boolean v3, p0, Lcsj;->d:Z

    invoke-virtual {v0, v1, v2, v3}, Lcsk;->e(IIZ)V

    return-void
.end method
