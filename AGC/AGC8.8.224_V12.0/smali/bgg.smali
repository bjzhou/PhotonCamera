.class final Lbgg;
.super Ljava/lang/Object;

# interfaces
.implements Lbgi;


# instance fields
.field final synthetic a:Lbik;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lbgj;

.field final synthetic d:Lbkc;


# direct methods
.method public constructor <init>(Lbgj;Lbik;Ljava/lang/Object;Lbkc;[B)V
    .locals 0

    iput-object p1, p0, Lbgg;->c:Lbgj;

    iput-object p2, p0, Lbgg;->a:Lbik;

    iput-object p3, p0, Lbgg;->b:Ljava/lang/Object;

    iput-object p4, p0, Lbgg;->d:Lbkc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lbgg;->c:Lbgj;

    iget-object v1, p0, Lbgg;->a:Lbik;

    iget-object v2, p0, Lbgg;->b:Ljava/lang/Object;

    iget-object v3, p0, Lbgg;->d:Lbkc;

    invoke-virtual {v0, v1, v2, v3}, Lbgj;->s(Lbik;Ljava/lang/Object;Lbkc;)V

    return-void
.end method
