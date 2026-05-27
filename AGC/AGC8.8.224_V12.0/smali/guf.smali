.class public final Lguf;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field public final a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lken;Lgnk;I)V
    .locals 0

    iput p3, p0, Lguf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lguf;->a:Ljava/lang/Object;

    invoke-interface {p1}, Lken;->c()Lkeo;

    move-result-object p2

    invoke-interface {p2}, Lkeo;->d()Lkli;

    move-result-object p2

    invoke-interface {p2}, Lkli;->f()I

    invoke-interface {p2}, Lkli;->k()Lklv;

    sget-object p2, Lklv;->a:Lklv;

    invoke-interface {p1}, Lken;->c()Lkeo;

    move-result-object p2

    invoke-interface {p2}, Lkeo;->d()Lkli;

    move-result-object p2

    invoke-interface {p2}, Lkli;->k()Lklv;

    invoke-interface {p1}, Lken;->c()Lkeo;

    move-result-object p1

    invoke-interface {p1}, Lkeo;->d()Lkli;

    move-result-object p1

    invoke-interface {p1}, Lkli;->h()Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Llbd;II)V
    .locals 1

    iput p3, p0, Lguf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Lloi;

    invoke-direct {p3, p1}, Lloi;-><init>(Llbd;)V

    const-string v0, "#version 320 es\nin vec4 aPosition;\nin vec2 aTexCoord;\nuniform mat4 uTransform;\nout vec2 vTexCoord;\nvoid main() {\n  vTexCoord = aTexCoord;\n  gl_Position = uTransform * aPosition;\n}"

    invoke-static {p1, v0}, Lldc;->h(Llbd;Ljava/lang/String;)Lldc;

    move-result-object v0

    invoke-static {v0}, Lktf;->l(Lkyc;)Llfg;

    move-result-object v0

    invoke-virtual {p3, v0}, Lloi;->b(Llfg;)V

    const/16 v0, 0x23

    if-ne p2, v0, :cond_0

    const-string p2, "#version 320 es\n#extension GL_EXT_YUV_target : enable\nprecision highp float;\nuniform highp __samplerExternal2DY2YEXT uImgTex;\nin vec2 vTexCoord;\nlayout (yuv) out vec3 outColor;\nvoid main() {\n    outColor = texture(uImgTex, vTexCoord).rgb;\n}"

    goto :goto_0

    :cond_0
    const-string p2, "#version 320 es\n#extension GL_EXT_YUV_target : enable\nprecision highp float;\nuniform highp __samplerExternal2DY2YEXT uImgTex;\nin vec2 vTexCoord;\nout vec4 outColor;\nvoid main() {\n    outColor = vec4(yuv_2_rgb(texture(uImgTex, vTexCoord).rgb,\n                              itu_601_full_range), 1.0);\n}"

    :goto_0
    invoke-static {p1, p2}, Lldc;->b(Llbd;Ljava/lang/String;)Lldc;

    move-result-object p1

    invoke-static {p1}, Lktf;->l(Lkyc;)Llfg;

    move-result-object p1

    invoke-virtual {p3, p1}, Lloi;->b(Llfg;)V

    invoke-virtual {p3}, Lloi;->d()Lldc;

    move-result-object p1

    iput-object p1, p0, Lguf;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget v0, p0, Lguf;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lguf;->a:Ljava/lang/Object;

    check-cast v0, Llbk;

    invoke-virtual {v0}, Llbk;->close()V

    return-void

    :pswitch_0
    sget-object v0, Lnbk;->a:Lnbc;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
