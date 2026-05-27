.class public final synthetic Letz;
.super Ljava/lang/Object;

# interfaces
.implements Ldfn;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lckl;I)V
    .locals 0

    iput p2, p0, Letz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Letz;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Leub;I)V
    .locals 0

    iput p2, p0, Letz;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Letz;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Letz;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Letz;->a:Ljava/lang/Object;

    check-cast v0, Lckl;

    iget-object v0, v0, Lckl;->b:Lfcv;

    invoke-virtual {v0, v1}, Lfcv;->b(F)V

    return-void

    :pswitch_0
    iget-object v0, p0, Letz;->a:Ljava/lang/Object;

    check-cast v0, Leub;

    iget-object v0, v0, Leub;->a:Leuc;

    iget-object v0, v0, Leuc;->N:Lfcv;

    invoke-virtual {v0, v1}, Lfcv;->b(F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
