.class public final Lcdh;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lmwa;

.field public static final b:Lmwa;

.field public static final c:Lmwa;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    invoke-static {}, Lmwa;->i()Lmvw;

    move-result-object v0

    sget-object v1, Lika;->g:Lika;

    const-string v2, "PORTRAIT"

    invoke-virtual {v0, v2, v1}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lika;->b:Lika;

    const-string v3, "WIDE_ANGLE"

    invoke-virtual {v0, v3, v1}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lika;->d:Lika;

    const-string v4, "PANORAMIC"

    invoke-virtual {v0, v4, v1}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lika;->f:Lika;

    const-string v5, "SLOW_MOTION"

    invoke-virtual {v0, v5, v1}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lika;->j:Lika;

    const-string v6, "ORNAMENT"

    invoke-virtual {v0, v6, v1}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lika;->m:Lika;

    const-string v7, "LONG_EXPOSURE"

    invoke-virtual {v0, v7, v1}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lika;->m:Lika;

    const-string v8, "LOW_LIGHT"

    invoke-virtual {v0, v8, v1}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lika;->p:Lika;

    const-string v9, "MORE_MODES"

    invoke-virtual {v0, v9, v1}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lika;->n:Lika;

    const-string v10, "TIME_LAPSE"

    invoke-virtual {v0, v10, v1}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lika;->s:Lika;

    const-string v11, "TIARA"

    invoke-virtual {v0, v11, v1}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmvw;->b()Lmwa;

    move-result-object v0

    sput-object v0, Lcdh;->a:Lmwa;

    invoke-static {}, Lmwa;->i()Lmvw;

    move-result-object v0

    sget-object v1, Lika;->g:Lika;

    invoke-virtual {v0, v2, v1}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lika;->b:Lika;

    invoke-virtual {v0, v3, v1}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lika;->d:Lika;

    invoke-virtual {v0, v4, v1}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lika;->f:Lika;

    invoke-virtual {v0, v5, v1}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lika;->j:Lika;

    invoke-virtual {v0, v6, v1}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lika;->m:Lika;

    invoke-virtual {v0, v7, v1}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lika;->m:Lika;

    invoke-virtual {v0, v8, v1}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lika;->p:Lika;

    invoke-virtual {v0, v9, v1}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lika;->n:Lika;

    invoke-virtual {v0, v10, v1}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lika;->s:Lika;

    invoke-virtual {v0, v11, v1}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lika;->l:Lika;

    const-string v2, "MOTION"

    invoke-virtual {v0, v2, v1}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmvw;->b()Lmwa;

    move-result-object v0

    sput-object v0, Lcdh;->b:Lmwa;

    invoke-static {}, Lmwa;->i()Lmvw;

    move-result-object v0

    sget-object v1, Lgcc;->c:Lgcc;

    const-string v2, "FLASH_ON"

    invoke-virtual {v0, v2, v1}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lgcc;->b:Lgcc;

    const-string v2, "FLASH_OFF"

    invoke-virtual {v0, v2, v1}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmvw;->b()Lmwa;

    move-result-object v0

    sput-object v0, Lcdh;->c:Lmwa;

    return-void
.end method
