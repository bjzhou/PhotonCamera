.class public final Lhex;
.super Ljava/lang/Object;

# interfaces
.implements Lhfv;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lert;I)V
    .locals 0

    iput p2, p0, Lhex;->b:I

    iput-object p1, p0, Lhex;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lhey;I)V
    .locals 0

    iput p2, p0, Lhex;->b:I

    iput-object p1, p0, Lhex;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final f()V
    .locals 2

    iget-object v0, p0, Lhex;->a:Ljava/lang/Object;

    check-cast v0, Lert;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lert;->x:Z

    invoke-virtual {v0}, Lert;->D()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Lhex;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhex;->a:Ljava/lang/Object;

    check-cast v0, Lert;

    iget-boolean v1, v0, Lert;->x:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lert;->x:Z

    invoke-virtual {v0}, Lert;->D()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lhex;->a:Ljava/lang/Object;

    check-cast v0, Lhey;

    iget-object v0, v0, Lhey;->f:Lhtl;

    invoke-virtual {v0}, Lhir;->d()V

    return-void

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic b()V
    .locals 1

    iget v0, p0, Lhex;->b:I

    return-void
.end method

.method public final synthetic c()V
    .locals 1

    iget v0, p0, Lhex;->b:I

    return-void
.end method

.method public final d()V
    .locals 1

    iget v0, p0, Lhex;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhex;->a:Ljava/lang/Object;

    check-cast v0, Lert;

    iget-boolean v0, v0, Lert;->x:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lhex;->f()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lhex;->a:Ljava/lang/Object;

    check-cast v0, Lhey;

    iget-object v0, v0, Lhey;->f:Lhtl;

    invoke-virtual {v0}, Lhir;->i()V

    return-void

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()V
    .locals 1

    iget v0, p0, Lhex;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Lhex;->f()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lhex;->a:Ljava/lang/Object;

    check-cast v0, Lhey;

    iget-object v0, v0, Lhey;->f:Lhtl;

    invoke-virtual {v0}, Lhir;->i()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
