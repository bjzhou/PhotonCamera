.class final Lbgf;
.super Ljava/lang/Object;

# interfaces
.implements Lbgi;


# instance fields
.field final synthetic a:F

.field final synthetic b:Lbgj;


# direct methods
.method public constructor <init>(Lbgj;F)V
    .locals 0

    iput-object p1, p0, Lbgf;->b:Lbgj;

    iput p2, p0, Lbgf;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lbgf;->b:Lbgj;

    iget v1, p0, Lbgf;->a:F

    invoke-virtual {v0, v1}, Lbgj;->n(F)V

    return-void
.end method
