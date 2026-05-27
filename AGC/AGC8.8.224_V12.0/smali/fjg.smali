.class public final Lfjg;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfjg;->a:Loiw;

    iput-object p2, p0, Lfjg;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lfgh;
    .locals 4

    iget-object v0, p0, Lfjg;->a:Loiw;

    check-cast v0, Lfjk;

    invoke-virtual {v0}, Lfjk;->a()Lfgj;

    move-result-object v0

    iget-object v1, p0, Lfjg;->b:Loiw;

    check-cast v1, Lfii;

    invoke-virtual {v1}, Lfii;->a()Lfgh;

    move-result-object v1

    new-instance v2, Lfhj;

    invoke-direct {v2}, Lfhj;-><init>()V

    invoke-virtual {v0}, Lfgj;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unknown muxer type: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    return-object v1

    :pswitch_1
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfjg;->a()Lfgh;

    move-result-object v0

    return-object v0
.end method
