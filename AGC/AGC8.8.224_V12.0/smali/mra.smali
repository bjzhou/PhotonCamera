.class final Lmra;
.super Ljava/lang/Object;

# interfaces
.implements Lmrc;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lmra;->b:I

    iput-object p1, p0, Lmra;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lmqf;I)V
    .locals 0

    iput p2, p0, Lmra;->b:I

    iput-object p1, p0, Lmra;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lmrd;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 2

    iget v0, p0, Lmra;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lmqy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lmqy;-><init>(Lmra;Lmrd;Ljava/lang/CharSequence;[B)V

    return-object v0

    :pswitch_0
    new-instance v0, Lmqz;

    invoke-direct {v0, p0, p1, p2}, Lmqz;-><init>(Lmra;Lmrd;Ljava/lang/CharSequence;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
