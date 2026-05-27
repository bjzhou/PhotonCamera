.class public final Lcwh;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljwu;

.field private final b:Lcwc;

.field private final c:Lcwe;

.field private final d:Lcwa;

.field private final e:Lcvz;

.field private final f:Ljwb;

.field private final g:Ljvk;


# direct methods
.method public constructor <init>(Lcwc;Lcwe;Ljvk;Lcwa;Lcvz;Ljwb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljwu;->i:Ljwu;

    iput-object v0, p0, Lcwh;->a:Ljwu;

    iput-object p3, p0, Lcwh;->g:Ljvk;

    iput-object p1, p0, Lcwh;->b:Lcwc;

    iput-object p2, p0, Lcwh;->c:Lcwe;

    iput-object p4, p0, Lcwh;->d:Lcwa;

    iput-object p5, p0, Lcwh;->e:Lcvz;

    iput-object p6, p0, Lcwh;->f:Ljwb;

    return-void
.end method


# virtual methods
.method public final a(Lika;)Lcwg;
    .locals 1

    sget-object v0, Lika;->a:Lika;

    invoke-virtual {p1}, Lika;->ordinal()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    iget-object p1, p0, Lcwh;->b:Lcwc;

    return-object p1

    :sswitch_0
    iget-object p1, p0, Lcwh;->d:Lcwa;

    return-object p1

    :sswitch_1
    iget-object p1, p0, Lcwh;->g:Ljvk;

    return-object p1

    :sswitch_2
    iget-object p1, p0, Lcwh;->f:Ljwb;

    invoke-interface {p1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcwx;->c:Lcwx;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcwh;->e:Lcvz;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcwh;->a:Ljwu;

    invoke-virtual {p1}, Ljwu;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcwh;->c:Lcwe;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcwh;->b:Lcwc;

    :goto_0
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x5 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method
