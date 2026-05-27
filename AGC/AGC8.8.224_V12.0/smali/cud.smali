.class public final synthetic Lcud;
.super Ljava/lang/Object;

# interfaces
.implements Lcug;


# instance fields
.field public final synthetic a:Lcuf;

.field public final synthetic b:Lhnc;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcuf;Lhnc;I)V
    .locals 0

    iput p3, p0, Lcud;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcud;->a:Lcuf;

    iput-object p2, p0, Lcud;->b:Lhnc;

    return-void
.end method


# virtual methods
.method public final a(Lcsc;)Lhna;
    .locals 2

    iget v0, p0, Lcud;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcud;->a:Lcuf;

    iget-object v1, p0, Lcud;->b:Lhnc;

    invoke-virtual {v0, p1}, Lcuf;->f(Lcsc;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v1, Lhnc;->a:Lhna;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcud;->a:Lcuf;

    iget-object v1, p0, Lcud;->b:Lhnc;

    invoke-virtual {v0, p1}, Lcuf;->f(Lcsc;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v1, Lhnc;->a:Lhna;

    goto :goto_0

    :cond_0
    iget-object p1, v1, Lhnc;->b:Lhna;

    :goto_0
    return-object p1

    :cond_1
    iget-object p1, v1, Lhnc;->b:Lhna;

    :goto_1
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
