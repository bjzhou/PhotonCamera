.class public final Llxg;
.super Laqc;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Laqc;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final a(Laqp;)V
    .locals 1

    sget-object v0, Llya;->a:Laqc;

    invoke-virtual {v0, p1}, Laqc;->a(Laqp;)V

    sget-object v0, Llya;->b:Laqc;

    invoke-virtual {v0, p1}, Laqc;->a(Laqp;)V

    return-void
.end method
