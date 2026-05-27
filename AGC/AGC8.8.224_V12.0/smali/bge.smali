.class final Lbge;
.super Ljava/lang/Object;

# interfaces
.implements Lbgi;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lbgj;


# direct methods
.method public constructor <init>(Lbgj;I)V
    .locals 0

    iput-object p1, p0, Lbge;->b:Lbgj;

    iput p2, p0, Lbge;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lbge;->b:Lbgj;

    iget v1, p0, Lbge;->a:I

    invoke-virtual {v0, v1}, Lbgj;->m(I)V

    return-void
.end method
