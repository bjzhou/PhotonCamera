.class public final synthetic Lkxb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkxe;

.field public final synthetic b:F

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lkxe;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkxb;->a:Lkxe;

    iput p2, p0, Lkxb;->b:F

    iput p3, p0, Lkxb;->c:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lkxb;->a:Lkxe;

    iget v1, p0, Lkxb;->b:F

    iget v2, p0, Lkxb;->c:F

    iget-object v0, v0, Lkxe;->b:Lkpf;

    invoke-interface {v0, v1, v2}, Lkpf;->d(FF)V

    return-void
.end method
