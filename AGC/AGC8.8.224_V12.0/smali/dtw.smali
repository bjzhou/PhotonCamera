.class public final synthetic Ldtw;
.super Ljava/lang/Object;

# interfaces
.implements Ldtt;


# instance fields
.field public final synthetic a:Ldsy;

.field public final synthetic b:Ldsy;

.field public final synthetic c:Ldsy;

.field public final synthetic d:Lduv;


# direct methods
.method public synthetic constructor <init>(Ldsy;Ldsy;Ldsy;Lduv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldtw;->a:Ldsy;

    iput-object p2, p0, Ldtw;->b:Ldsy;

    iput-object p3, p0, Ldtw;->c:Ldsy;

    iput-object p4, p0, Ldtw;->d:Lduv;

    return-void
.end method


# virtual methods
.method public final a(JLkou;)V
    .locals 4

    iget-object p3, p0, Ldtw;->a:Ldsy;

    iget-object v0, p0, Ldtw;->b:Ldsy;

    iget-object v1, p0, Ldtw;->c:Ldsy;

    iget-object v2, p0, Ldtw;->d:Lduv;

    invoke-interface {p3, p1, p2}, Ldsy;->a(J)F

    move-result p3

    const v3, 0x3e19999a    # 0.15f

    mul-float p3, p3, v3

    invoke-interface {v0, p1, p2}, Ldsy;->a(J)F

    move-result v0

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float v0, v0, v3

    invoke-interface {v1, p1, p2}, Ldsy;->a(J)F

    move-result v1

    const v3, 0x3f19999a    # 0.6f

    mul-float v1, v1, v3

    add-float/2addr p3, v0

    add-float/2addr p3, v1

    invoke-virtual {v2, p1, p2, p3}, Lduv;->g(JF)V

    return-void
.end method
