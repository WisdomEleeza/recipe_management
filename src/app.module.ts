import { Module } from '@nestjs/common';
import { PrismaModule } from './prisma/prisma.module';
import { RecipeModule } from './recipe/recipe.module';

@Module({
  imports: [PrismaModule, RecipeModule],
})
export class AppModule {}
