.class public final Lavr;
.super Ljava/lang/Object;

# interfaces
.implements Lavq;


# instance fields
.field final synthetic a:Ljava/lang/reflect/Method;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lavr;->d:I

    iput-object p1, p0, Lavr;->a:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lavr;->b:Ljava/lang/Object;

    iput-object p3, p0, Lavr;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget v0, p0, Lavr;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lavr;->a:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lavr;->b:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lavr;->c:Ljava/lang/Object;

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object v0, p0, Lavr;->a:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lavr;->b:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lavr;->c:Ljava/lang/Object;

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
